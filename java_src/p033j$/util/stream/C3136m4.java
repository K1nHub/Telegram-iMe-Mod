package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C3136m4 implements InterfaceC2908s, Consumer {

    /* renamed from: d */
    private static final Object f1083d = new Object();

    /* renamed from: a */
    private final InterfaceC2908s f1084a;

    /* renamed from: b */
    private final ConcurrentHashMap f1085b;

    /* renamed from: c */
    private Object f1086c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3136m4(InterfaceC2908s interfaceC2908s) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f1084a = interfaceC2908s;
        this.f1085b = concurrentHashMap;
    }

    private C3136m4(InterfaceC2908s interfaceC2908s, ConcurrentHashMap concurrentHashMap) {
        this.f1084a = interfaceC2908s;
        this.f1085b = concurrentHashMap;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1086c = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        while (this.f1084a.mo131b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f1085b;
            Object obj = this.f1086c;
            if (obj == null) {
                obj = f1083d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f1086c);
                this.f1086c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2908s
    public int characteristics() {
        return (this.f1084a.characteristics() & (-16469)) | 1;
    }

    @Override // p033j$.util.InterfaceC2908s
    public long estimateSize() {
        return this.f1084a.estimateSize();
    }

    /* renamed from: f */
    public void m386f(Consumer consumer, Object obj) {
        if (this.f1085b.putIfAbsent(obj != null ? obj : f1083d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public void forEachRemaining(Consumer consumer) {
        this.f1084a.forEachRemaining(new C3143o(this, consumer));
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
        return this.f1084a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2835a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2908s
    public InterfaceC2908s trySplit() {
        InterfaceC2908s trySplit = this.f1084a.trySplit();
        if (trySplit != null) {
            return new C3136m4(trySplit, this.f1085b);
        }
        return null;
    }
}
