package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3173D;
import p033j$.wrappers.C3201U;
import p033j$.wrappers.C3224i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3088o implements Consumer, InterfaceC2839y {

    /* renamed from: a */
    public final /* synthetic */ int f1089a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1090b;

    /* renamed from: c */
    public final /* synthetic */ Object f1091c;

    public /* synthetic */ C3088o(BiConsumer biConsumer, Object obj) {
        this.f1090b = biConsumer;
        this.f1091c = obj;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1089a) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f1090b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f1091c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
                ((BiConsumer) this.f1090b).accept(this.f1091c, obj);
                return;
            default:
                ((C3081m4) this.f1090b).m368f((Consumer) this.f1091c, obj);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1089a) {
            case 0:
                return Objects.requireNonNull(consumer);
            case 5:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        switch (this.f1089a) {
            case 1:
                return new C3054i1((EnumC3066k1) this.f1090b, (C3173D) this.f1091c);
            case 2:
                return new C3042g1((EnumC3066k1) this.f1090b, (C3201U) this.f1091c);
            case 3:
                return new C3048h1((EnumC3066k1) this.f1090b, (C3224i0) this.f1091c);
            default:
                return new C3036f1((EnumC3066k1) this.f1090b, (Predicate) this.f1091c);
        }
    }

    public /* synthetic */ C3088o(EnumC3066k1 enumC3066k1, Predicate predicate) {
        this.f1090b = enumC3066k1;
        this.f1091c = predicate;
    }

    public /* synthetic */ C3088o(EnumC3066k1 enumC3066k1, C3173D c3173d) {
        this.f1090b = enumC3066k1;
        this.f1091c = c3173d;
    }

    public /* synthetic */ C3088o(EnumC3066k1 enumC3066k1, C3201U c3201u) {
        this.f1090b = enumC3066k1;
        this.f1091c = c3201u;
    }

    public /* synthetic */ C3088o(EnumC3066k1 enumC3066k1, C3224i0 c3224i0) {
        this.f1090b = enumC3066k1;
        this.f1091c = c3224i0;
    }

    public /* synthetic */ C3088o(C3081m4 c3081m4, Consumer consumer) {
        this.f1090b = c3081m4;
        this.f1091c = consumer;
    }

    public /* synthetic */ C3088o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1090b = atomicBoolean;
        this.f1091c = concurrentHashMap;
    }
}
