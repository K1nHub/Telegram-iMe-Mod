package io.grpc;
/* loaded from: classes3.dex */
final class PersistentHashArrayMappedTrie<K, V> {

    /* loaded from: classes3.dex */
    interface Node<K, V> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PersistentHashArrayMappedTrie() {
        this(null);
    }

    private PersistentHashArrayMappedTrie(Node<K, V> node) {
    }
}
