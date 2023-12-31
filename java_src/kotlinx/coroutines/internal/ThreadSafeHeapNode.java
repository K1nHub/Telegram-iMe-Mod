package kotlinx.coroutines.internal;
/* compiled from: ThreadSafeHeap.kt */
/* loaded from: classes4.dex */
public interface ThreadSafeHeapNode {
    ThreadSafeHeap<?> getHeap();

    int getIndex();

    void setHeap(ThreadSafeHeap<?> threadSafeHeap);

    void setIndex(int i);
}
