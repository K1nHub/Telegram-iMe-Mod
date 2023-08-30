package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3312D;
import p033j$.wrappers.C3340U;
import p033j$.wrappers.C3363i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3227o implements Consumer, InterfaceC2978y {

    /* renamed from: a */
    public final /* synthetic */ int f1102a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1103b;

    /* renamed from: c */
    public final /* synthetic */ Object f1104c;

    public /* synthetic */ C3227o(BiConsumer biConsumer, Object obj) {
        this.f1103b = biConsumer;
        this.f1104c = obj;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1102a) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f1103b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f1104c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
                ((BiConsumer) this.f1103b).accept(this.f1104c, obj);
                return;
            default:
                ((C3220m4) this.f1103b).m386f((Consumer) this.f1104c, obj);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1102a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            case 5:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public Object get() {
        switch (this.f1102a) {
            case 1:
                return new C3193i1((EnumC3205k1) this.f1103b, (C3312D) this.f1104c);
            case 2:
                return new C3181g1((EnumC3205k1) this.f1103b, (C3340U) this.f1104c);
            case 3:
                return new C3187h1((EnumC3205k1) this.f1103b, (C3363i0) this.f1104c);
            default:
                return new C3175f1((EnumC3205k1) this.f1103b, (Predicate) this.f1104c);
        }
    }

    public /* synthetic */ C3227o(EnumC3205k1 enumC3205k1, Predicate predicate) {
        this.f1103b = enumC3205k1;
        this.f1104c = predicate;
    }

    public /* synthetic */ C3227o(EnumC3205k1 enumC3205k1, C3312D c3312d) {
        this.f1103b = enumC3205k1;
        this.f1104c = c3312d;
    }

    public /* synthetic */ C3227o(EnumC3205k1 enumC3205k1, C3340U c3340u) {
        this.f1103b = enumC3205k1;
        this.f1104c = c3340u;
    }

    public /* synthetic */ C3227o(EnumC3205k1 enumC3205k1, C3363i0 c3363i0) {
        this.f1103b = enumC3205k1;
        this.f1104c = c3363i0;
    }

    public /* synthetic */ C3227o(C3220m4 c3220m4, Consumer consumer) {
        this.f1103b = c3220m4;
        this.f1104c = consumer;
    }

    public /* synthetic */ C3227o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1103b = atomicBoolean;
        this.f1104c = concurrentHashMap;
    }
}
