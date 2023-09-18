package kotlinx.coroutines.sync;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Mutex.kt */
/* loaded from: classes6.dex */
public final class Empty {
    public final Object locked;

    public Empty(Object obj) {
        this.locked = obj;
    }

    public String toString() {
        return "Empty[" + this.locked + ']';
    }
}
