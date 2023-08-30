package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.m4 */
/* loaded from: classes2.dex */
final class C3220m4 implements InterfaceC2992s, Consumer {

    /* renamed from: d */
    private static final Object f1092d = new Object();

    /* renamed from: a */
    private final InterfaceC2992s f1093a;

    /* renamed from: b */
    private final ConcurrentHashMap f1094b;

    /* renamed from: c */
    private Object f1095c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3220m4(InterfaceC2992s interfaceC2992s) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f1093a = interfaceC2992s;
        this.f1094b = concurrentHashMap;
    }

    private C3220m4(InterfaceC2992s interfaceC2992s, ConcurrentHashMap concurrentHashMap) {
        this.f1093a = interfaceC2992s;
        this.f1094b = concurrentHashMap;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1095c = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        while (this.f1093a.mo131b(this)) {
            ConcurrentHashMap concurrentHashMap = this.f1094b;
            Object obj = this.f1095c;
            if (obj == null) {
                obj = f1092d;
            }
            if (concurrentHashMap.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f1095c);
                this.f1095c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2992s
    public int characteristics() {
        return (this.f1093a.characteristics() & (-16469)) | 1;
    }

    @Override // p033j$.util.InterfaceC2992s
    public long estimateSize() {
        return this.f1093a.estimateSize();
    }

    /* renamed from: f */
    public void m386f(Consumer consumer, Object obj) {
        if (this.f1094b.putIfAbsent(obj != null ? obj : f1092d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public void forEachRemaining(Consumer consumer) {
        this.f1093a.forEachRemaining(new C3227o(this, consumer));
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        return this.f1093a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2919a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2992s
    public InterfaceC2992s trySplit() {
        InterfaceC2992s trySplit = this.f1093a.trySplit();
        if (trySplit != null) {
            return new C3220m4(trySplit, this.f1094b);
        }
        return null;
    }
}
