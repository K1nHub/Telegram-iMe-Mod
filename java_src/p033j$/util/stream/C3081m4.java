package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C3081m4 implements InterfaceC2853s, Consumer {

    /* renamed from: d */
    private static final Object f1079d = new Object();

    /* renamed from: a */
    private final InterfaceC2853s f1080a;

    /* renamed from: b */
    private final ConcurrentHashMap f1081b;

    /* renamed from: c */
    private Object f1082c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3081m4(InterfaceC2853s interfaceC2853s) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f1080a = interfaceC2853s;
        this.f1081b = concurrentHashMap;
    }

    private C3081m4(InterfaceC2853s interfaceC2853s, ConcurrentHashMap concurrentHashMap) {
        this.f1080a = interfaceC2853s;
        this.f1081b = concurrentHashMap;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1082c = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        while (this.f1080a.mo113b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f1081b;
            Object obj = this.f1082c;
            if (obj == null) {
                obj = f1079d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f1082c);
                this.f1082c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return (this.f1080a.characteristics() & (-16469)) | 1;
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        return this.f1080a.estimateSize();
    }

    /* renamed from: f */
    public void m368f(Consumer consumer, Object obj) {
        if (this.f1081b.putIfAbsent(obj != null ? obj : f1079d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        this.f1080a.forEachRemaining(new C3088o(this, consumer));
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        return this.f1080a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m606e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s
    public InterfaceC2853s trySplit() {
        InterfaceC2853s trySplit = this.f1080a.trySplit();
        if (trySplit != null) {
            return new C3081m4(trySplit, this.f1081b);
        }
        return null;
    }
}
