package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2674y;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C3008D;
import p034j$.wrappers.C3036U;
import p034j$.wrappers.C3059i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2923o implements Consumer, InterfaceC2674y {

    /* renamed from: a */
    public final /* synthetic */ int f1004a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1005b;

    /* renamed from: c */
    public final /* synthetic */ Object f1006c;

    public /* synthetic */ C2923o(BiConsumer biConsumer, Object obj) {
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
                ((C2916m4) this.f1005b).m363f((Consumer) this.f1006c, obj);
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

    @Override // p034j$.util.function.InterfaceC2674y
    public Object get() {
        switch (this.f1004a) {
            case 1:
                return new C2889i1((EnumC2901k1) this.f1005b, (C3008D) this.f1006c);
            case 2:
                return new C2877g1((EnumC2901k1) this.f1005b, (C3036U) this.f1006c);
            case 3:
                return new C2883h1((EnumC2901k1) this.f1005b, (C3059i0) this.f1006c);
            default:
                return new C2871f1((EnumC2901k1) this.f1005b, (Predicate) this.f1006c);
        }
    }

    public /* synthetic */ C2923o(EnumC2901k1 enumC2901k1, Predicate predicate) {
        this.f1005b = enumC2901k1;
        this.f1006c = predicate;
    }

    public /* synthetic */ C2923o(EnumC2901k1 enumC2901k1, C3008D c3008d) {
        this.f1005b = enumC2901k1;
        this.f1006c = c3008d;
    }

    public /* synthetic */ C2923o(EnumC2901k1 enumC2901k1, C3036U c3036u) {
        this.f1005b = enumC2901k1;
        this.f1006c = c3036u;
    }

    public /* synthetic */ C2923o(EnumC2901k1 enumC2901k1, C3059i0 c3059i0) {
        this.f1005b = enumC2901k1;
        this.f1006c = c3059i0;
    }

    public /* synthetic */ C2923o(C2916m4 c2916m4, Consumer consumer) {
        this.f1005b = c2916m4;
        this.f1006c = consumer;
    }

    public /* synthetic */ C2923o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1005b = atomicBoolean;
        this.f1006c = concurrentHashMap;
    }
}
