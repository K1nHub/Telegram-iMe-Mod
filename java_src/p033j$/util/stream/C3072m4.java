package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C3072m4 implements Spliterator, Consumer {

    /* renamed from: d */
    private static final Object f1132d = new Object();

    /* renamed from: a */
    private final Spliterator f1133a;

    /* renamed from: b */
    private final ConcurrentHashMap f1134b;

    /* renamed from: c */
    private Object f1135c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3072m4(Spliterator spliterator) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f1133a = spliterator;
        this.f1134b = concurrentHashMap;
    }

    private C3072m4(Spliterator spliterator, ConcurrentHashMap concurrentHashMap) {
        this.f1133a = spliterator;
        this.f1134b = concurrentHashMap;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1135c = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo182b(Consumer consumer) {
        while (this.f1133a.mo182b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f1134b;
            Object obj = this.f1135c;
            if (obj == null) {
                obj = f1132d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f1135c);
                this.f1135c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p033j$.util.Spliterator
    public int characteristics() {
        return (this.f1133a.characteristics() & (-16469)) | 1;
    }

    @Override // p033j$.util.Spliterator
    public long estimateSize() {
        return this.f1133a.estimateSize();
    }

    /* renamed from: f */
    public void m435f(Consumer consumer, Object obj) {
        if (this.f1134b.putIfAbsent(obj != null ? obj : f1132d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        this.f1133a.forEachRemaining(new C3079o(this, consumer));
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        return this.f1133a.getComparator();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2838k.m605d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2838k.m604e(this, i);
    }

    @Override // p033j$.util.Spliterator
    public Spliterator trySplit() {
        Spliterator trySplit = this.f1133a.trySplit();
        if (trySplit != null) {
            return new C3072m4(trySplit, this.f1134b);
        }
        return null;
    }
}
