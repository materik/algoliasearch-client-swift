// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

typealias Client = QuerySuggestionsClient

open class QuerySuggestionsClient {
    private var configuration: Configuration
    private var transporter: Transporter

    var applicationID: String {
        configuration.applicationID
    }

    public init(configuration: Configuration, transporter: Transporter) {
        self.configuration = configuration
        self.transporter = transporter
    }

    public convenience init(configuration: Configuration) {
        self.init(configuration: configuration, transporter: Transporter(configuration: configuration))
    }

    public convenience init(applicationID: String, apiKey: String, region: Region) throws {
        try self.init(configuration: Configuration(applicationID: applicationID, apiKey: apiKey, region: region))
    }

    /**
     - parameter querySuggestionsConfigurationWithIndex: (body)
     - returns: BaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func createConfig(querySuggestionsConfigurationWithIndex: QuerySuggestionsConfigurationWithIndex, requestOptions: RequestOptions? = nil) async throws -> BaseResponse {
        let response: Response<BaseResponse> = try await createConfigWithHTTPInfo(querySuggestionsConfigurationWithIndex: querySuggestionsConfigurationWithIndex, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     Create a new Query Suggestions configuration.  You can have up to 100 configurations per Algolia application.

     Required API Key ACLs:
       - editSettings

     - parameter querySuggestionsConfigurationWithIndex: (body)
     - returns: RequestBuilder<BaseResponse>
     */

    open func createConfigWithHTTPInfo(querySuggestionsConfigurationWithIndex: QuerySuggestionsConfigurationWithIndex, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<BaseResponse> {
        let resourcePath = "/1/configs"
        let body = querySuggestionsConfigurationWithIndex
        let queryItems: [URLQueryItem]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "POST",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - parameter path: (path) Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
     - parameter parameters: (query) Query parameters to apply to the current query. (optional)
     - returns: AnyCodable
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customDelete(path: String, parameters: [String: AnyCodable]? = nil, requestOptions: RequestOptions? = nil) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customDeleteWithHTTPInfo(path: path, parameters: parameters, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     This method allow you to send requests to the Algolia REST API.

     - parameter path: (path) Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
     - parameter parameters: (query) Query parameters to apply to the current query. (optional)
     - returns: RequestBuilder<AnyCodable>
     */

    open func customDeleteWithHTTPInfo(path: String, parameters: [String: AnyCodable]? = nil, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<AnyCodable> {
        var resourcePath = "/1{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        let pathPostEscape = pathPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{path}", with: pathPostEscape, options: .literal, range: nil)
        let body: AnyCodable? = nil
        let queryItems = APIHelper.mapValuesToQueryItems(parameters)

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "DELETE",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - parameter path: (path) Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
     - parameter parameters: (query) Query parameters to apply to the current query. (optional)
     - returns: AnyCodable
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customGet(path: String, parameters: [String: AnyCodable]? = nil, requestOptions: RequestOptions? = nil) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customGetWithHTTPInfo(path: path, parameters: parameters, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     This method allow you to send requests to the Algolia REST API.

     - parameter path: (path) Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
     - parameter parameters: (query) Query parameters to apply to the current query. (optional)
     - returns: RequestBuilder<AnyCodable>
     */

    open func customGetWithHTTPInfo(path: String, parameters: [String: AnyCodable]? = nil, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<AnyCodable> {
        var resourcePath = "/1{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        let pathPostEscape = pathPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{path}", with: pathPostEscape, options: .literal, range: nil)
        let body: AnyCodable? = nil
        let queryItems = APIHelper.mapValuesToQueryItems(parameters)

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - parameter path: (path) Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
     - parameter parameters: (query) Query parameters to apply to the current query. (optional)
     - parameter body: (body) Parameters to send with the custom request. (optional)
     - returns: AnyCodable
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customPost(path: String, parameters: [String: AnyCodable]? = nil, body: [String: AnyCodable]? = nil, requestOptions: RequestOptions? = nil) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customPostWithHTTPInfo(path: path, parameters: parameters, body: body, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     This method allow you to send requests to the Algolia REST API.

     - parameter path: (path) Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
     - parameter parameters: (query) Query parameters to apply to the current query. (optional)
     - parameter body: (body) Parameters to send with the custom request. (optional)
     - returns: RequestBuilder<AnyCodable>
     */

    open func customPostWithHTTPInfo(path: String, parameters: [String: AnyCodable]? = nil, body: [String: AnyCodable]? = nil, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<AnyCodable> {
        var resourcePath = "/1{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        let pathPostEscape = pathPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{path}", with: pathPostEscape, options: .literal, range: nil)
        let body = body
        let queryItems = APIHelper.mapValuesToQueryItems(parameters)

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "POST",
            path: resourcePath,
            data: body ?? AnyCodable(),
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - parameter path: (path) Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
     - parameter parameters: (query) Query parameters to apply to the current query. (optional)
     - parameter body: (body) Parameters to send with the custom request. (optional)
     - returns: AnyCodable
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func customPut(path: String, parameters: [String: AnyCodable]? = nil, body: [String: AnyCodable]? = nil, requestOptions: RequestOptions? = nil) async throws -> AnyCodable {
        let response: Response<AnyCodable> = try await customPutWithHTTPInfo(path: path, parameters: parameters, body: body, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     This method allow you to send requests to the Algolia REST API.

     - parameter path: (path) Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
     - parameter parameters: (query) Query parameters to apply to the current query. (optional)
     - parameter body: (body) Parameters to send with the custom request. (optional)
     - returns: RequestBuilder<AnyCodable>
     */

    open func customPutWithHTTPInfo(path: String, parameters: [String: AnyCodable]? = nil, body: [String: AnyCodable]? = nil, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<AnyCodable> {
        var resourcePath = "/1{path}"
        let pathPreEscape = "\(APIHelper.mapValueToPathItem(path))"
        let pathPostEscape = pathPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{path}", with: pathPostEscape, options: .literal, range: nil)
        let body = body
        let queryItems = APIHelper.mapValuesToQueryItems(parameters)

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "PUT",
            path: resourcePath,
            data: body ?? AnyCodable(),
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - parameter indexName: (path) Query Suggestions index name.
     - returns: BaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func deleteConfig(indexName: String, requestOptions: RequestOptions? = nil) async throws -> BaseResponse {
        let response: Response<BaseResponse> = try await deleteConfigWithHTTPInfo(indexName: indexName, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     Delete a Query Suggestions configuration.  Deleting only removes the configuration and stops updates to the Query Suggestions index. The Query Suggestions index itself is not deleted.

     Required API Key ACLs:
       - editSettings

     - parameter indexName: (path) Query Suggestions index name.
     - returns: RequestBuilder<BaseResponse>
     */

    open func deleteConfigWithHTTPInfo(indexName: String, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<BaseResponse> {
        var resourcePath = "/1/configs/{indexName}"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{indexName}", with: indexNamePostEscape, options: .literal, range: nil)
        let body: AnyCodable? = nil
        let queryItems: [URLQueryItem]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "DELETE",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - returns: [QuerySuggestionsConfigurationResponse]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func getAllConfigs(requestOptions: RequestOptions? = nil) async throws -> [QuerySuggestionsConfigurationResponse] {
        let response: Response<[QuerySuggestionsConfigurationResponse]> = try await getAllConfigsWithHTTPInfo(requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     List all Query Suggestions configurations of your Algolia application.

     Required API Key ACLs:
       - settings

     - returns: RequestBuilder<[QuerySuggestionsConfigurationResponse]>
     */

    open func getAllConfigsWithHTTPInfo(requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<[QuerySuggestionsConfigurationResponse]> {
        let resourcePath = "/1/configs"
        let body: AnyCodable? = nil
        let queryItems: [URLQueryItem]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - parameter indexName: (path) Query Suggestions index name.
     - returns: QuerySuggestionsConfigurationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func getConfig(indexName: String, requestOptions: RequestOptions? = nil) async throws -> QuerySuggestionsConfigurationResponse {
        let response: Response<QuerySuggestionsConfigurationResponse> = try await getConfigWithHTTPInfo(indexName: indexName, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     Get a single Query Suggestions configuration.

     Required API Key ACLs:
       - settings

     - parameter indexName: (path) Query Suggestions index name.
     - returns: RequestBuilder<QuerySuggestionsConfigurationResponse>
     */

    open func getConfigWithHTTPInfo(indexName: String, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<QuerySuggestionsConfigurationResponse> {
        var resourcePath = "/1/configs/{indexName}"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{indexName}", with: indexNamePostEscape, options: .literal, range: nil)
        let body: AnyCodable? = nil
        let queryItems: [URLQueryItem]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - parameter indexName: (path) Query Suggestions index name.
     - returns: GetConfigStatus200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func getConfigStatus(indexName: String, requestOptions: RequestOptions? = nil) async throws -> GetConfigStatus200Response {
        let response: Response<GetConfigStatus200Response> = try await getConfigStatusWithHTTPInfo(indexName: indexName, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     Report the status of a Query Suggestions index.

     Required API Key ACLs:
       - settings

     - parameter indexName: (path) Query Suggestions index name.
     - returns: RequestBuilder<GetConfigStatus200Response>
     */

    open func getConfigStatusWithHTTPInfo(indexName: String, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<GetConfigStatus200Response> {
        var resourcePath = "/1/configs/{indexName}/status"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{indexName}", with: indexNamePostEscape, options: .literal, range: nil)
        let body: AnyCodable? = nil
        let queryItems: [URLQueryItem]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - parameter indexName: (path) Query Suggestions index name.
     - returns: GetLogFile200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func getLogFile(indexName: String, requestOptions: RequestOptions? = nil) async throws -> GetLogFile200Response {
        let response: Response<GetLogFile200Response> = try await getLogFileWithHTTPInfo(indexName: indexName, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     Get the logs for a single Query Suggestions index.

     Required API Key ACLs:
       - settings

     - parameter indexName: (path) Query Suggestions index name.
     - returns: RequestBuilder<GetLogFile200Response>
     */

    open func getLogFileWithHTTPInfo(indexName: String, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<GetLogFile200Response> {
        var resourcePath = "/1/logs/{indexName}"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{indexName}", with: indexNamePostEscape, options: .literal, range: nil)
        let body: AnyCodable? = nil
        let queryItems: [URLQueryItem]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "GET",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }

    /**
     - parameter indexName: (path) Query Suggestions index name.
     - parameter querySuggestionsConfiguration: (body)
     - returns: BaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open func updateConfig(indexName: String, querySuggestionsConfiguration: QuerySuggestionsConfiguration, requestOptions: RequestOptions? = nil) async throws -> BaseResponse {
        let response: Response<BaseResponse> = try await updateConfigWithHTTPInfo(indexName: indexName, querySuggestionsConfiguration: querySuggestionsConfiguration, requestOptions: requestOptions)

        guard let body = response.body else {
            throw AlgoliaError.missingData
        }

        return body
    }

    /**
     Update a QuerySuggestions configuration.

     Required API Key ACLs:
       - editSettings

     - parameter indexName: (path) Query Suggestions index name.
     - parameter querySuggestionsConfiguration: (body)
     - returns: RequestBuilder<BaseResponse>
     */

    open func updateConfigWithHTTPInfo(indexName: String, querySuggestionsConfiguration: QuerySuggestionsConfiguration, requestOptions userRequestOptions: RequestOptions? = nil) async throws -> Response<BaseResponse> {
        var resourcePath = "/1/configs/{indexName}"
        let indexNamePreEscape = "\(APIHelper.mapValueToPathItem(indexName))"
        let indexNamePostEscape = indexNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAlgoliaAllowed) ?? ""
        resourcePath = resourcePath.replacingOccurrences(of: "{indexName}", with: indexNamePostEscape, options: .literal, range: nil)
        let body = querySuggestionsConfiguration
        let queryItems: [URLQueryItem]? = nil

        let nillableHeaders: [String: Any?]? = nil

        let headers = APIHelper.rejectNilHeaders(nillableHeaders)

        return try await transporter.send(
            method: "PUT",
            path: resourcePath,
            data: body,
            requestOptions: RequestOptions(headers: headers, queryItems: queryItems) + userRequestOptions
        )
    }
}
