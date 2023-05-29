package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2713y;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C3047D;
import p034j$.wrappers.C3075U;
import p034j$.wrappers.C3098i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2962o implements Consumer, InterfaceC2713y {

    /* renamed from: a */
    public final /* synthetic */ int f1007a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1008b;

    /* renamed from: c */
    public final /* synthetic */ Object f1009c;

    public /* synthetic */ C2962o(BiConsumer biConsumer, Object obj) {
        this.f1008b = biConsumer;
        this.f1009c = obj;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1007a) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f1008b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f1009c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
                ((BiConsumer) this.f1008b).accept(this.f1009c, obj);
                return;
            default:
                ((C2955m4) this.f1008b).m368f((Consumer) this.f1009c, obj);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1007a) {
            case 0:
                return Objects.requireNonNull(consumer);
            case 5:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.function.InterfaceC2713y
    public Object get() {
        switch (this.f1007a) {
            case 1:
                return new C2928i1((EnumC2940k1) this.f1008b, (C3047D) this.f1009c);
            case 2:
                return new C2916g1((EnumC2940k1) this.f1008b, (C3075U) this.f1009c);
            case 3:
                return new C2922h1((EnumC2940k1) this.f1008b, (C3098i0) this.f1009c);
            default:
                return new C2910f1((EnumC2940k1) this.f1008b, (Predicate) this.f1009c);
        }
    }

    public /* synthetic */ C2962o(EnumC2940k1 enumC2940k1, Predicate predicate) {
        this.f1008b = enumC2940k1;
        this.f1009c = predicate;
    }

    public /* synthetic */ C2962o(EnumC2940k1 enumC2940k1, C3047D c3047d) {
        this.f1008b = enumC2940k1;
        this.f1009c = c3047d;
    }

    public /* synthetic */ C2962o(EnumC2940k1 enumC2940k1, C3075U c3075u) {
        this.f1008b = enumC2940k1;
        this.f1009c = c3075u;
    }

    public /* synthetic */ C2962o(EnumC2940k1 enumC2940k1, C3098i0 c3098i0) {
        this.f1008b = enumC2940k1;
        this.f1009c = c3098i0;
    }

    public /* synthetic */ C2962o(C2955m4 c2955m4, Consumer consumer) {
        this.f1008b = c2955m4;
        this.f1009c = consumer;
    }

    public /* synthetic */ C2962o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1008b = atomicBoolean;
        this.f1009c = concurrentHashMap;
    }
}
