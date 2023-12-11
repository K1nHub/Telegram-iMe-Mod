package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2835x;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3164C;
import p033j$.wrappers.C3189S;
import p033j$.wrappers.C3210g0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3081o implements Consumer, InterfaceC2835x {

    /* renamed from: a */
    public final /* synthetic */ int f1142a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1143b;

    /* renamed from: c */
    public final /* synthetic */ Object f1144c;

    public /* synthetic */ C3081o(BiConsumer biConsumer, Object obj) {
        this.f1143b = biConsumer;
        this.f1144c = obj;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1142a) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f1143b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f1144c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
                ((BiConsumer) this.f1143b).accept(this.f1144c, obj);
                return;
            default:
                ((C3074m4) this.f1143b).m432f((Consumer) this.f1144c, obj);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1142a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            case 5:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    @Override // p033j$.util.function.InterfaceC2835x
    public Object get() {
        switch (this.f1142a) {
            case 1:
                return new C3047i1((EnumC3059k1) this.f1143b, (C3164C) this.f1144c);
            case 2:
                return new C3035g1((EnumC3059k1) this.f1143b, (C3189S) this.f1144c);
            case 3:
                return new C3041h1((EnumC3059k1) this.f1143b, (C3210g0) this.f1144c);
            default:
                return new C3029f1((EnumC3059k1) this.f1143b, (Predicate) this.f1144c);
        }
    }

    public /* synthetic */ C3081o(EnumC3059k1 enumC3059k1, Predicate predicate) {
        this.f1143b = enumC3059k1;
        this.f1144c = predicate;
    }

    public /* synthetic */ C3081o(EnumC3059k1 enumC3059k1, C3164C c3164c) {
        this.f1143b = enumC3059k1;
        this.f1144c = c3164c;
    }

    public /* synthetic */ C3081o(EnumC3059k1 enumC3059k1, C3189S c3189s) {
        this.f1143b = enumC3059k1;
        this.f1144c = c3189s;
    }

    public /* synthetic */ C3081o(EnumC3059k1 enumC3059k1, C3210g0 c3210g0) {
        this.f1143b = enumC3059k1;
        this.f1144c = c3210g0;
    }

    public /* synthetic */ C3081o(C3074m4 c3074m4, Consumer consumer) {
        this.f1143b = c3074m4;
        this.f1144c = consumer;
    }

    public /* synthetic */ C3081o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1143b = atomicBoolean;
        this.f1144c = concurrentHashMap;
    }
}
