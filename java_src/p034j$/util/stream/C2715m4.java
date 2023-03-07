package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C2715m4 implements InterfaceC2487s, Consumer {

    /* renamed from: d */
    private static final Object f988d = new Object();

    /* renamed from: a */
    private final InterfaceC2487s f989a;

    /* renamed from: b */
    private final ConcurrentHashMap f990b;

    /* renamed from: c */
    private Object f991c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2715m4(InterfaceC2487s interfaceC2487s) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f989a = interfaceC2487s;
        this.f990b = concurrentHashMap;
    }

    private C2715m4(InterfaceC2487s interfaceC2487s, ConcurrentHashMap concurrentHashMap) {
        this.f989a = interfaceC2487s;
        this.f990b = concurrentHashMap;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f991c = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        while (this.f989a.mo128b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f990b;
            Object obj = this.f991c;
            if (obj == null) {
                obj = f988d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f991c);
                this.f991c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2487s
    public int characteristics() {
        return (this.f989a.characteristics() & (-16469)) | 1;
    }

    @Override // p034j$.util.InterfaceC2487s
    public long estimateSize() {
        return this.f989a.estimateSize();
    }

    /* renamed from: f */
    public void m383f(Consumer consumer, Object obj) {
        if (this.f990b.putIfAbsent(obj != null ? obj : f988d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public void forEachRemaining(Consumer consumer) {
        this.f989a.forEachRemaining(new C2722o(this, consumer));
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        return this.f989a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2487s
    public InterfaceC2487s trySplit() {
        InterfaceC2487s trySplit = this.f989a.trySplit();
        if (trySplit != null) {
            return new C2715m4(trySplit, this.f990b);
        }
        return null;
    }
}
