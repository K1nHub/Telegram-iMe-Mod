package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C2960m4 implements InterfaceC2732s, Consumer {

    /* renamed from: d */
    private static final Object f997d = new Object();

    /* renamed from: a */
    private final InterfaceC2732s f998a;

    /* renamed from: b */
    private final ConcurrentHashMap f999b;

    /* renamed from: c */
    private Object f1000c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2960m4(InterfaceC2732s interfaceC2732s) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f998a = interfaceC2732s;
        this.f999b = concurrentHashMap;
    }

    private C2960m4(InterfaceC2732s interfaceC2732s, ConcurrentHashMap concurrentHashMap) {
        this.f998a = interfaceC2732s;
        this.f999b = concurrentHashMap;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1000c = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        while (this.f998a.mo113b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f999b;
            Object obj = this.f1000c;
            if (obj == null) {
                obj = f997d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f1000c);
                this.f1000c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2732s
    public int characteristics() {
        return (this.f998a.characteristics() & (-16469)) | 1;
    }

    @Override // p034j$.util.InterfaceC2732s
    public long estimateSize() {
        return this.f998a.estimateSize();
    }

    /* renamed from: f */
    public void m368f(Consumer consumer, Object obj) {
        if (this.f999b.putIfAbsent(obj != null ? obj : f997d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p034j$.util.InterfaceC2732s
    public void forEachRemaining(Consumer consumer) {
        this.f998a.forEachRemaining(new C2967o(this, consumer));
    }

    @Override // p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        return this.f998a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2659a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2659a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC2732s
    public InterfaceC2732s trySplit() {
        InterfaceC2732s trySplit = this.f998a.trySplit();
        if (trySplit != null) {
            return new C2960m4(trySplit, this.f999b);
        }
        return null;
    }
}