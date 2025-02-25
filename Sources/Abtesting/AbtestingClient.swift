// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

open class AbtestingClient {
    private var configuration: AbtestingClientConfiguration
    private var transporter: Transporter

    var appID: String {
        self.configuration.appID
    }

    public init(configuration: AbtestingClientConfiguration, transporter: Transporter) {
        self.configuration = configuration
        self.transporter = transporter
    }

    public convenience init(configuration: AbtestingClientConfiguration) {
        self.init(configuration: configuration, transporter: Transporter(configuration: configuration))
    }

    public convenience init(appID: String, apiKey: String, region: Region?) throws {
        try self.init(configuration: AbtestingClientConfiguration(appID: appID, apiKey: apiKey, region: region))
    }

    open func setClientApiKey(apiKey: String) {
        self.configuration.apiKey = apiKey
        self.transporter.setClientApiKey(apiKey: apiKey)
    }

    /// - parameter addABTestsRequest: (body)
    /// - returns: ABTestResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func addABTests(
        addABTestsRequest: AddABTestsRequest,
        requestOptions: RequestOptions? = nil
    ) async throws -> ABTestResponse {
        let response: Response<ABTestResponse> = try await addABTestsWithHTTPInfo(
            addABTestsRequest: addABTestsRequest,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Creates a new A/B test.
    // Required API Key ACLs:
    //  - editSettings
    //
    // - parameter addABTestsRequest: (body)
    // - returns: RequestBuilder<ABTestResponse>

    open func addABTestsWithHTTPInfo(
        addABTestsRequest: AddABTestsRequest,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<ABTestResponse> {
        let resourcePath = "/2/abtests"
        let body = addABTestsRequest
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "POST",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    /// - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    /// - returns: AnyCodable
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customDelete(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        requestOptions: RequestOptions? = nil
    ) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customDeleteWithHTTPInfo(
            path: path,
            parameters: parameters,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // This method allow you to send requests to the Algolia REST API.
    //
    //
    // - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    //
    // - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    // - returns: RequestBuilder<AnyCodable>

    open func customDeleteWithHTTPInfo(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<AnyCodable> {
        guard !path.isEmpty else {
            throw AlgoliaError.invalidArgument("path", "customDelete")
        }

        var resourcePath = "/{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        resourcePath = resourcePath.replacingOccurrences(
            of: "{path}",
            with: pathPreEscape,
            options: .literal,
            range: nil
        )
        let body: AnyCodable? = nil
        let queryParameters: [String: AnyCodable]? = parameters

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "DELETE",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    /// - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    /// - returns: AnyCodable
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customGet(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        requestOptions: RequestOptions? = nil
    ) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customGetWithHTTPInfo(
            path: path,
            parameters: parameters,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // This method allow you to send requests to the Algolia REST API.
    //
    //
    // - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    //
    // - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    // - returns: RequestBuilder<AnyCodable>

    open func customGetWithHTTPInfo(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<AnyCodable> {
        guard !path.isEmpty else {
            throw AlgoliaError.invalidArgument("path", "customGet")
        }

        var resourcePath = "/{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        resourcePath = resourcePath.replacingOccurrences(
            of: "{path}",
            with: pathPreEscape,
            options: .literal,
            range: nil
        )
        let body: AnyCodable? = nil
        let queryParameters: [String: AnyCodable]? = parameters

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    /// - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    /// - parameter body: (body) Parameters to send with the custom request. (optional)
    /// - returns: AnyCodable
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customPost(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        body: Codable? = nil,
        requestOptions: RequestOptions? = nil
    ) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customPostWithHTTPInfo(
            path: path,
            parameters: parameters,
            body: body,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // This method allow you to send requests to the Algolia REST API.
    //
    //
    // - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    //
    // - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    //
    // - parameter body: (body) Parameters to send with the custom request. (optional)
    // - returns: RequestBuilder<AnyCodable>

    open func customPostWithHTTPInfo(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        body: Codable? = nil,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<AnyCodable> {
        guard !path.isEmpty else {
            throw AlgoliaError.invalidArgument("path", "customPost")
        }

        var resourcePath = "/{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        resourcePath = resourcePath.replacingOccurrences(
            of: "{path}",
            with: pathPreEscape,
            options: .literal,
            range: nil
        )
        let body = body
        let queryParameters: [String: AnyCodable]? = parameters

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "POST",
            path: resourcePath,
            data: body ?? AnyCodable(),
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    /// - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    /// - parameter body: (body) Parameters to send with the custom request. (optional)
    /// - returns: AnyCodable
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customPut(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        body: Codable? = nil,
        requestOptions: RequestOptions? = nil
    ) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customPutWithHTTPInfo(
            path: path,
            parameters: parameters,
            body: body,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // This method allow you to send requests to the Algolia REST API.
    //
    //
    // - parameter path: (path) Path of the endpoint, anything after \"/1\" must be specified.
    //
    // - parameter parameters: (query) Query parameters to apply to the current query. (optional)
    //
    // - parameter body: (body) Parameters to send with the custom request. (optional)
    // - returns: RequestBuilder<AnyCodable>

    open func customPutWithHTTPInfo(
        path: String,
        parameters: [String: AnyCodable]? = nil,
        body: Codable? = nil,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<AnyCodable> {
        guard !path.isEmpty else {
            throw AlgoliaError.invalidArgument("path", "customPut")
        }

        var resourcePath = "/{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        resourcePath = resourcePath.replacingOccurrences(
            of: "{path}",
            with: pathPreEscape,
            options: .literal,
            range: nil
        )
        let body = body
        let queryParameters: [String: AnyCodable]? = parameters

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "PUT",
            path: resourcePath,
            data: body ?? AnyCodable(),
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter id: (path) Unique A/B test identifier.
    /// - returns: ABTestResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func deleteABTest(id: Int, requestOptions: RequestOptions? = nil) async throws -> ABTestResponse {
        let response: Response<ABTestResponse> = try await deleteABTestWithHTTPInfo(
            id: id,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Deletes an A/B test by its ID.
    // Required API Key ACLs:
    //  - editSettings
    //
    // - parameter id: (path) Unique A/B test identifier.
    // - returns: RequestBuilder<ABTestResponse>

    open func deleteABTestWithHTTPInfo(
        id: Int,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<ABTestResponse> {
        var resourcePath = "/2/abtests/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let body: AnyCodable? = nil
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "DELETE",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter estimateABTestRequest: (body)
    /// - returns: EstimateABTestResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func estimateABTest(
        estimateABTestRequest: EstimateABTestRequest,
        requestOptions: RequestOptions? = nil
    ) async throws -> EstimateABTestResponse {
        let response: Response<EstimateABTestResponse> = try await estimateABTestWithHTTPInfo(
            estimateABTestRequest: estimateABTestRequest,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Given the traffic percentage and the expected effect size, this endpoint estimates the sample size and duration
    // of an A/B test based on historical traffic.
    // Required API Key ACLs:
    //  - analytics
    //
    // - parameter estimateABTestRequest: (body)
    // - returns: RequestBuilder<EstimateABTestResponse>

    open func estimateABTestWithHTTPInfo(
        estimateABTestRequest: EstimateABTestRequest,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<EstimateABTestResponse> {
        let resourcePath = "/2/abtests/estimate"
        let body = estimateABTestRequest
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "POST",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter id: (path) Unique A/B test identifier.
    /// - returns: ABTest
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func getABTest(id: Int, requestOptions: RequestOptions? = nil) async throws -> ABTest {
        let response: Response<ABTest> = try await getABTestWithHTTPInfo(id: id, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Retrieves the details for an A/B test by its ID.
    // Required API Key ACLs:
    //  - analytics
    //
    // - parameter id: (path) Unique A/B test identifier.
    // - returns: RequestBuilder<ABTest>

    open func getABTestWithHTTPInfo(
        id: Int,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<ABTest> {
        var resourcePath = "/2/abtests/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let body: AnyCodable? = nil
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter offset: (query) Position of the first item to return. (optional, default to 0)
    /// - parameter limit: (query) Number of items to return. (optional, default to 10)
    /// - parameter indexPrefix: (query) Index name prefix. Only A/B tests for indices starting with this string are
    /// included in the response. (optional)
    /// - parameter indexSuffix: (query) Index name suffix. Only A/B tests for indices ending with this string are
    /// included in the response. (optional)
    /// - returns: ListABTestsResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func listABTests(
        offset: Int? = nil,
        limit: Int? = nil,
        indexPrefix: String? = nil,
        indexSuffix: String? = nil,
        requestOptions: RequestOptions? = nil
    ) async throws -> ListABTestsResponse {
        let response: Response<ListABTestsResponse> = try await listABTestsWithHTTPInfo(
            offset: offset,
            limit: limit,
            indexPrefix: indexPrefix,
            indexSuffix: indexSuffix,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Lists all A/B tests you configured for this application.
    // Required API Key ACLs:
    //  - analytics
    //
    // - parameter offset: (query) Position of the first item to return. (optional, default to 0)
    //
    // - parameter limit: (query) Number of items to return. (optional, default to 10)
    //
    // - parameter indexPrefix: (query) Index name prefix. Only A/B tests for indices starting with this string are
    // included in the response. (optional)
    //
    // - parameter indexSuffix: (query) Index name suffix. Only A/B tests for indices ending with this string are
    // included in the response. (optional)
    // - returns: RequestBuilder<ListABTestsResponse>

    open func listABTestsWithHTTPInfo(
        offset: Int? = nil,
        limit: Int? = nil,
        indexPrefix: String? = nil,
        indexSuffix: String? = nil,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<ListABTestsResponse> {
        let resourcePath = "/2/abtests"
        let body: AnyCodable? = nil
        let queryParameters: [String: Any?] = [
            "offset": offset?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "indexPrefix": indexPrefix?.encodeToJSON(),
            "indexSuffix": indexSuffix?.encodeToJSON(),
        ]

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter scheduleABTestsRequest: (body)
    /// - returns: ScheduleABTestResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func scheduleABTest(
        scheduleABTestsRequest: ScheduleABTestsRequest,
        requestOptions: RequestOptions? = nil
    ) async throws -> ScheduleABTestResponse {
        let response: Response<ScheduleABTestResponse> = try await scheduleABTestWithHTTPInfo(
            scheduleABTestsRequest: scheduleABTestsRequest,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Schedule an A/B test to be started at a later time.
    // Required API Key ACLs:
    //  - editSettings
    //
    // - parameter scheduleABTestsRequest: (body)
    // - returns: RequestBuilder<ScheduleABTestResponse>

    open func scheduleABTestWithHTTPInfo(
        scheduleABTestsRequest: ScheduleABTestsRequest,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<ScheduleABTestResponse> {
        let resourcePath = "/2/abtests/schedule"
        let body = scheduleABTestsRequest
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "POST",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }

    /// - parameter id: (path) Unique A/B test identifier.
    /// - returns: ABTestResponse
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func stopABTest(id: Int, requestOptions: RequestOptions? = nil) async throws -> ABTestResponse {
        let response: Response<ABTestResponse> = try await stopABTestWithHTTPInfo(
            id: id,
            requestOptions: requestOptions
        )

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    // Stops an A/B test by its ID.  You can't restart stopped A/B tests.
    // Required API Key ACLs:
    //  - editSettings
    //
    // - parameter id: (path) Unique A/B test identifier.
    // - returns: RequestBuilder<ABTestResponse>

    open func stopABTestWithHTTPInfo(
        id: Int,
        requestOptions userRequestOptions: RequestOptions? = nil
    ) async throws -> Response<ABTestResponse> {
        var resourcePath = "/2/abtests/{id}/stop"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let body: AnyCodable? = nil
        let queryParameters: [String: Any?]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await self.transporter.send(
            method: "POST",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(
                headers: headers,
                queryParameters: queryParameters
            ) + userRequestOptions
        )
    }
}
