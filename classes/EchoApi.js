class EchoApi {
    constructor(baseUrl) {
        this.baseUrl = baseUrl;
    }

    async request(endpoint, method, data, token) {
        const response = await fetch(`${this.baseUrl}/${endpoint}`, {
            method,
            headers: {
                'Content-Type': 'application/json',
                "Authorization": token
            },
            body: JSON.stringify(data)
        });

        return response.json();
    }
}