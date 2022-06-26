import Vapor

@main
public struct MyServer {
    public static func main() throws {
        let webApp = Application()
        defer { webApp.shutdown() }
        webApp.get("greet", use: Self.greet)
        webApp.post("echo", use: Self.echo)
        try webApp.run()
    }
    
    static func greet(request: Request) async throws -> String {
        return "Hello Server-side Swift"
    }
    
    static func echo(request: Request) async throws -> String {
        if let body = request.body.string {
            return body
        }
        return "Oh, there is nothing"
    }
}
