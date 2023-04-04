package p035j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.concurrent.ConcurrentHashMap;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C2929m4 implements InterfaceC2701s, Consumer {

    /* renamed from: d */
    private static final Object f999d = new Object();

    /* renamed from: a */
    private final InterfaceC2701s f1000a;

    /* renamed from: b */
    private final ConcurrentHashMap f1001b;

    /* renamed from: c */
    private Object f1002c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2929m4(InterfaceC2701s interfaceC2701s) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f1000a = interfaceC2701s;
        this.f1001b = concurrentHashMap;
    }

    private C2929m4(InterfaceC2701s interfaceC2701s, ConcurrentHashMap concurrentHashMap) {
        this.f1000a = interfaceC2701s;
        this.f1001b = concurrentHashMap;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1002c = obj;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public boolean mo122b(Consumer consumer) {
        while (this.f1000a.mo122b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f1001b;
            Object obj = this.f1002c;
            if (obj == null) {
                obj = f999d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f1002c);
                this.f1002c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p035j$.util.InterfaceC2701s
    public int characteristics() {
        return (this.f1000a.characteristics() & (-16469)) | 1;
    }

    @Override // p035j$.util.InterfaceC2701s
    public long estimateSize() {
        return this.f1000a.estimateSize();
    }

    /* renamed from: f */
    public void m377f(Consumer consumer, Object obj) {
        if (this.f1001b.putIfAbsent(obj != null ? obj : f999d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public void forEachRemaining(Consumer consumer) {
        this.f1000a.forEachRemaining(new C2936o(this, consumer));
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        return this.f1000a.getComparator();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2628a.m616e(this);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    @Override // p035j$.util.InterfaceC2701s
    public InterfaceC2701s trySplit() {
        InterfaceC2701s trySplit = this.f1000a.trySplit();
        if (trySplit != null) {
            return new C2929m4(trySplit, this.f1001b);
        }
        return null;
    }
}
