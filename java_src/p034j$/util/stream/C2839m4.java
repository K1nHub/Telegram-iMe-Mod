package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C2839m4 implements InterfaceC2611s, Consumer {

    /* renamed from: d */
    private static final Object f993d = new Object();

    /* renamed from: a */
    private final InterfaceC2611s f994a;

    /* renamed from: b */
    private final ConcurrentHashMap f995b;

    /* renamed from: c */
    private Object f996c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2839m4(InterfaceC2611s interfaceC2611s) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f994a = interfaceC2611s;
        this.f995b = concurrentHashMap;
    }

    private C2839m4(InterfaceC2611s interfaceC2611s, ConcurrentHashMap concurrentHashMap) {
        this.f994a = interfaceC2611s;
        this.f995b = concurrentHashMap;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f996c = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        while (this.f994a.mo128b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f995b;
            Object obj = this.f996c;
            if (obj == null) {
                obj = f993d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f996c);
                this.f996c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2611s
    public int characteristics() {
        return (this.f994a.characteristics() & (-16469)) | 1;
    }

    @Override // p034j$.util.InterfaceC2611s
    public long estimateSize() {
        return this.f994a.estimateSize();
    }

    /* renamed from: f */
    public void m383f(Consumer consumer, Object obj) {
        if (this.f995b.putIfAbsent(obj != null ? obj : f993d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public void forEachRemaining(Consumer consumer) {
        this.f994a.forEachRemaining(new C2846o(this, consumer));
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        return this.f994a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2611s
    public InterfaceC2611s trySplit() {
        InterfaceC2611s trySplit = this.f994a.trySplit();
        if (trySplit != null) {
            return new C2839m4(trySplit, this.f995b);
        }
        return null;
    }
}
