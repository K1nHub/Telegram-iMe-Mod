package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3228D;
import p033j$.wrappers.C3256U;
import p033j$.wrappers.C3279i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3143o implements Consumer, InterfaceC2894y {

    /* renamed from: a */
    public final /* synthetic */ int f1093a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1094b;

    /* renamed from: c */
    public final /* synthetic */ Object f1095c;

    public /* synthetic */ C3143o(BiConsumer biConsumer, Object obj) {
        this.f1094b = biConsumer;
        this.f1095c = obj;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1093a) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f1094b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f1095c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
                ((BiConsumer) this.f1094b).accept(this.f1095c, obj);
                return;
            default:
                ((C3136m4) this.f1094b).m386f((Consumer) this.f1095c, obj);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1093a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            case 5:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public Object get() {
        switch (this.f1093a) {
            case 1:
                return new C3109i1((EnumC3121k1) this.f1094b, (C3228D) this.f1095c);
            case 2:
                return new C3097g1((EnumC3121k1) this.f1094b, (C3256U) this.f1095c);
            case 3:
                return new C3103h1((EnumC3121k1) this.f1094b, (C3279i0) this.f1095c);
            default:
                return new C3091f1((EnumC3121k1) this.f1094b, (Predicate) this.f1095c);
        }
    }

    public /* synthetic */ C3143o(EnumC3121k1 enumC3121k1, Predicate predicate) {
        this.f1094b = enumC3121k1;
        this.f1095c = predicate;
    }

    public /* synthetic */ C3143o(EnumC3121k1 enumC3121k1, C3228D c3228d) {
        this.f1094b = enumC3121k1;
        this.f1095c = c3228d;
    }

    public /* synthetic */ C3143o(EnumC3121k1 enumC3121k1, C3256U c3256u) {
        this.f1094b = enumC3121k1;
        this.f1095c = c3256u;
    }

    public /* synthetic */ C3143o(EnumC3121k1 enumC3121k1, C3279i0 c3279i0) {
        this.f1094b = enumC3121k1;
        this.f1095c = c3279i0;
    }

    public /* synthetic */ C3143o(C3136m4 c3136m4, Consumer consumer) {
        this.f1094b = c3136m4;
        this.f1095c = consumer;
    }

    public /* synthetic */ C3143o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1094b = atomicBoolean;
        this.f1095c = concurrentHashMap;
    }
}
