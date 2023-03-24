package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C2853m4 implements InterfaceC2625s, Consumer {

    /* renamed from: d */
    private static final Object f994d = new Object();

    /* renamed from: a */
    private final InterfaceC2625s f995a;

    /* renamed from: b */
    private final ConcurrentHashMap f996b;

    /* renamed from: c */
    private Object f997c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2853m4(InterfaceC2625s interfaceC2625s) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f995a = interfaceC2625s;
        this.f996b = concurrentHashMap;
    }

    private C2853m4(InterfaceC2625s interfaceC2625s, ConcurrentHashMap concurrentHashMap) {
        this.f995a = interfaceC2625s;
        this.f996b = concurrentHashMap;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f997c = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public boolean mo127b(Consumer consumer) {
        while (this.f995a.mo127b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f996b;
            Object obj = this.f997c;
            if (obj == null) {
                obj = f994d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f997c);
                this.f997c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2625s
    public int characteristics() {
        return (this.f995a.characteristics() & (-16469)) | 1;
    }

    @Override // p034j$.util.InterfaceC2625s
    public long estimateSize() {
        return this.f995a.estimateSize();
    }

    /* renamed from: f */
    public void m382f(Consumer consumer, Object obj) {
        if (this.f996b.putIfAbsent(obj != null ? obj : f994d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p034j$.util.InterfaceC2625s
    public void forEachRemaining(Consumer consumer) {
        this.f995a.forEachRemaining(new C2860o(this, consumer));
    }

    @Override // p034j$.util.InterfaceC2625s
    public Comparator getComparator() {
        return this.f995a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2552a.m621e(this);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2552a.m620f(this, i);
    }

    @Override // p034j$.util.InterfaceC2625s
    public InterfaceC2625s trySplit() {
        InterfaceC2625s trySplit = this.f995a.trySplit();
        if (trySplit != null) {
            return new C2853m4(trySplit, this.f996b);
        }
        return null;
    }
}
