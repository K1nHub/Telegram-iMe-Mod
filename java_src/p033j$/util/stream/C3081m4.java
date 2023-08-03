package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C3081m4 implements InterfaceC2853s, Consumer {

    /* renamed from: d */
    private static final Object f1082d = new Object();

    /* renamed from: a */
    private final InterfaceC2853s f1083a;

    /* renamed from: b */
    private final ConcurrentHashMap f1084b;

    /* renamed from: c */
    private Object f1085c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3081m4(InterfaceC2853s interfaceC2853s) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f1083a = interfaceC2853s;
        this.f1084b = concurrentHashMap;
    }

    private C3081m4(InterfaceC2853s interfaceC2853s, ConcurrentHashMap concurrentHashMap) {
        this.f1083a = interfaceC2853s;
        this.f1084b = concurrentHashMap;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1085c = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        while (this.f1083a.mo131b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f1084b;
            Object obj = this.f1085c;
            if (obj == null) {
                obj = f1082d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f1085c);
                this.f1085c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return (this.f1083a.characteristics() & (-16469)) | 1;
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        return this.f1083a.estimateSize();
    }

    /* renamed from: f */
    public void m386f(Consumer consumer, Object obj) {
        if (this.f1084b.putIfAbsent(obj != null ? obj : f1082d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        this.f1083a.forEachRemaining(new C3088o(this, consumer));
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        return this.f1083a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s
    public InterfaceC2853s trySplit() {
        InterfaceC2853s trySplit = this.f1083a.trySplit();
        if (trySplit != null) {
            return new C3081m4(trySplit, this.f1084b);
        }
        return null;
    }
}
