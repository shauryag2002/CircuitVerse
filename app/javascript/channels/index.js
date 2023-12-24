import consumer from "./consumer";
// Import all the channels to be used by Action Cable
// Function to subscribe to a channel
function subscribeToChannel(channelName) {
    consumer.subscriptions.create(channelName, {
        connected() {
            console.log("Connected to channel");
        },
        disconnected() {
            console.log("Disconnected from channel");
        },
        received(data) {
            console.log("Received data:", data);
        }
    });
}

// Call the function to subscribe to a channel
subscribeToChannel("SimulatorChannel");
