package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2473y;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2807D;
import p034j$.wrappers.C2835U;
import p034j$.wrappers.C2858i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2722o implements Consumer, InterfaceC2473y {

    /* renamed from: a */
    public final /* synthetic */ int f998a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f999b;

    /* renamed from: c */
    public final /* synthetic */ Object f1000c;

    public /* synthetic */ C2722o(BiConsumer biConsumer, Object obj) {
        this.f999b = biConsumer;
        this.f1000c = obj;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f998a) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f999b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f1000c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
                ((BiConsumer) this.f999b).accept(this.f1000c, obj);
                return;
            default:
                ((C2715m4) this.f999b).m383f((Consumer) this.f1000c, obj);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f998a) {
            case 0:
                return Objects.requireNonNull(consumer);
            case 5:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        switch (this.f998a) {
            case 1:
                return new C2688i1((EnumC2700k1) this.f999b, (C2807D) this.f1000c);
            case 2:
                return new C2676g1((EnumC2700k1) this.f999b, (C2835U) this.f1000c);
            case 3:
                return new C2682h1((EnumC2700k1) this.f999b, (C2858i0) this.f1000c);
            default:
                return new C2670f1((EnumC2700k1) this.f999b, (Predicate) this.f1000c);
        }
    }

    public /* synthetic */ C2722o(EnumC2700k1 enumC2700k1, Predicate predicate) {
        this.f999b = enumC2700k1;
        this.f1000c = predicate;
    }

    public /* synthetic */ C2722o(EnumC2700k1 enumC2700k1, C2807D c2807d) {
        this.f999b = enumC2700k1;
        this.f1000c = c2807d;
    }

    public /* synthetic */ C2722o(EnumC2700k1 enumC2700k1, C2835U c2835u) {
        this.f999b = enumC2700k1;
        this.f1000c = c2835u;
    }

    public /* synthetic */ C2722o(EnumC2700k1 enumC2700k1, C2858i0 c2858i0) {
        this.f999b = enumC2700k1;
        this.f1000c = c2858i0;
    }

    public /* synthetic */ C2722o(C2715m4 c2715m4, Consumer consumer) {
        this.f999b = c2715m4;
        this.f1000c = consumer;
    }

    public /* synthetic */ C2722o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f999b = atomicBoolean;
        this.f1000c = concurrentHashMap;
    }
}
