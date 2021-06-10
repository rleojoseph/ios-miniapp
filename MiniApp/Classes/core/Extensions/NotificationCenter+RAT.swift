internal extension NotificationCenter {
    func sendAnalytics(event: MiniAppRATEvent, type: MiniAppRATEventType? = nil, analyticsConfig: [MAAnalyticsConfig] = [MiniAppAnalytics.defaultAccount], parameters customData: [(String, String)]? = nil) {
        var parameters = [String: Codable]()
        var topLevel = [String: String]()

        var configs = analyticsConfig

        if !configs.contains(MiniAppAnalytics.defaultAccount) {
            configs.append(MiniAppAnalytics.defaultAccount)
        }

        for configItem in configs {
            topLevel["acc"] = configItem.acc
            topLevel["aid"] = configItem.aid
            topLevel["actype"] = event.name()

            parameters["topLevelObject"] = topLevel
            parameters["eventName"] = (type ?? event.eType()).rawValue
            parameters["eventData"] = customData?.reduce([String: String]()) { (eventData, param) in
                var mutableEventData = eventData
                mutableEventData.updateValue(param.1, forKey: param.0)
                return mutableEventData
            }
            self.post(name: MiniAppAnalytics.notificationName, object: parameters)
        }
    }
}
