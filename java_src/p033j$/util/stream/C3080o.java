package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3163C;
import p033j$.wrappers.C3188S;
import p033j$.wrappers.C3209g0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3080o implements Consumer, InterfaceC2834x {

    /* renamed from: a */
    public final /* synthetic */ int f1142a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1143b;

    /* renamed from: c */
    public final /* synthetic */ Object f1144c;

    public /* synthetic */ C3080o(BiConsumer biConsumer, Object obj) {
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
                ((C3073m4) this.f1143b).m431f((Consumer) this.f1144c, obj);
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

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        switch (this.f1142a) {
            case 1:
                return new C3046i1((EnumC3058k1) this.f1143b, (C3163C) this.f1144c);
            case 2:
                return new C3034g1((EnumC3058k1) this.f1143b, (C3188S) this.f1144c);
            case 3:
                return new C3040h1((EnumC3058k1) this.f1143b, (C3209g0) this.f1144c);
            default:
                return new C3028f1((EnumC3058k1) this.f1143b, (Predicate) this.f1144c);
        }
    }

    public /* synthetic */ C3080o(EnumC3058k1 enumC3058k1, Predicate predicate) {
        this.f1143b = enumC3058k1;
        this.f1144c = predicate;
    }

    public /* synthetic */ C3080o(EnumC3058k1 enumC3058k1, C3163C c3163c) {
        this.f1143b = enumC3058k1;
        this.f1144c = c3163c;
    }

    public /* synthetic */ C3080o(EnumC3058k1 enumC3058k1, C3188S c3188s) {
        this.f1143b = enumC3058k1;
        this.f1144c = c3188s;
    }

    public /* synthetic */ C3080o(EnumC3058k1 enumC3058k1, C3209g0 c3209g0) {
        this.f1143b = enumC3058k1;
        this.f1144c = c3209g0;
    }

    public /* synthetic */ C3080o(C3073m4 c3073m4, Consumer consumer) {
        this.f1143b = c3073m4;
        this.f1144c = consumer;
    }

    public /* synthetic */ C3080o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1143b = atomicBoolean;
        this.f1144c = concurrentHashMap;
    }
}
