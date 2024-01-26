package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3162C;
import p033j$.wrappers.C3187S;
import p033j$.wrappers.C3208g0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3079o implements Consumer, InterfaceC2833x {

    /* renamed from: a */
    public final /* synthetic */ int f1142a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1143b;

    /* renamed from: c */
    public final /* synthetic */ Object f1144c;

    public /* synthetic */ C3079o(BiConsumer biConsumer, Object obj) {
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
                ((C3072m4) this.f1143b).m435f((Consumer) this.f1144c, obj);
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

    @Override // p033j$.util.function.InterfaceC2833x
    public Object get() {
        switch (this.f1142a) {
            case 1:
                return new C3045i1((EnumC3057k1) this.f1143b, (C3162C) this.f1144c);
            case 2:
                return new C3033g1((EnumC3057k1) this.f1143b, (C3187S) this.f1144c);
            case 3:
                return new C3039h1((EnumC3057k1) this.f1143b, (C3208g0) this.f1144c);
            default:
                return new C3027f1((EnumC3057k1) this.f1143b, (Predicate) this.f1144c);
        }
    }

    public /* synthetic */ C3079o(EnumC3057k1 enumC3057k1, Predicate predicate) {
        this.f1143b = enumC3057k1;
        this.f1144c = predicate;
    }

    public /* synthetic */ C3079o(EnumC3057k1 enumC3057k1, C3162C c3162c) {
        this.f1143b = enumC3057k1;
        this.f1144c = c3162c;
    }

    public /* synthetic */ C3079o(EnumC3057k1 enumC3057k1, C3187S c3187s) {
        this.f1143b = enumC3057k1;
        this.f1144c = c3187s;
    }

    public /* synthetic */ C3079o(EnumC3057k1 enumC3057k1, C3208g0 c3208g0) {
        this.f1143b = enumC3057k1;
        this.f1144c = c3208g0;
    }

    public /* synthetic */ C3079o(C3072m4 c3072m4, Consumer consumer) {
        this.f1143b = c3072m4;
        this.f1144c = consumer;
    }

    public /* synthetic */ C3079o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1143b = atomicBoolean;
        this.f1144c = concurrentHashMap;
    }
}
