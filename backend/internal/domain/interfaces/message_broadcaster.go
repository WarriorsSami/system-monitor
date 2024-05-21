package interfaces

type MessageBroadcaster interface {
	Broadcast([]byte)
}
