package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2611y;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2945D;
import p034j$.wrappers.C2973U;
import p034j$.wrappers.C2996i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2860o implements Consumer, InterfaceC2611y {

    /* renamed from: a */
    public final /* synthetic */ int f1004a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1005b;

    /* renamed from: c */
    public final /* synthetic */ Object f1006c;

    public /* synthetic */ C2860o(BiConsumer biConsumer, Object obj) {
        this.f1005b = biConsumer;
        this.f1006c = obj;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1004a) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f1005b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f1006c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
                ((BiConsumer) this.f1005b).accept(this.f1006c, obj);
                return;
            default:
                ((C2853m4) this.f1005b).m382f((Consumer) this.f1006c, obj);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1004a) {
            case 0:
                return Objects.requireNonNull(consumer);
            case 5:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        switch (this.f1004a) {
            case 1:
                return new C2826i1((EnumC2838k1) this.f1005b, (C2945D) this.f1006c);
            case 2:
                return new C2814g1((EnumC2838k1) this.f1005b, (C2973U) this.f1006c);
            case 3:
                return new C2820h1((EnumC2838k1) this.f1005b, (C2996i0) this.f1006c);
            default:
                return new C2808f1((EnumC2838k1) this.f1005b, (Predicate) this.f1006c);
        }
    }

    public /* synthetic */ C2860o(EnumC2838k1 enumC2838k1, Predicate predicate) {
        this.f1005b = enumC2838k1;
        this.f1006c = predicate;
    }

    public /* synthetic */ C2860o(EnumC2838k1 enumC2838k1, C2945D c2945d) {
        this.f1005b = enumC2838k1;
        this.f1006c = c2945d;
    }

    public /* synthetic */ C2860o(EnumC2838k1 enumC2838k1, C2973U c2973u) {
        this.f1005b = enumC2838k1;
        this.f1006c = c2973u;
    }

    public /* synthetic */ C2860o(EnumC2838k1 enumC2838k1, C2996i0 c2996i0) {
        this.f1005b = enumC2838k1;
        this.f1006c = c2996i0;
    }

    public /* synthetic */ C2860o(C2853m4 c2853m4, Consumer consumer) {
        this.f1005b = c2853m4;
        this.f1006c = consumer;
    }

    public /* synthetic */ C2860o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1005b = atomicBoolean;
        this.f1006c = concurrentHashMap;
    }
}
