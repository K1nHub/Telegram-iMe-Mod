package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2718y;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C3052D;
import p034j$.wrappers.C3080U;
import p034j$.wrappers.C3103i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2967o implements Consumer, InterfaceC2718y {

    /* renamed from: a */
    public final /* synthetic */ int f1007a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1008b;

    /* renamed from: c */
    public final /* synthetic */ Object f1009c;

    public /* synthetic */ C2967o(BiConsumer biConsumer, Object obj) {
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
                ((C2960m4) this.f1008b).m368f((Consumer) this.f1009c, obj);
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

    @Override // p034j$.util.function.InterfaceC2718y
    public Object get() {
        switch (this.f1007a) {
            case 1:
                return new C2933i1((EnumC2945k1) this.f1008b, (C3052D) this.f1009c);
            case 2:
                return new C2921g1((EnumC2945k1) this.f1008b, (C3080U) this.f1009c);
            case 3:
                return new C2927h1((EnumC2945k1) this.f1008b, (C3103i0) this.f1009c);
            default:
                return new C2915f1((EnumC2945k1) this.f1008b, (Predicate) this.f1009c);
        }
    }

    public /* synthetic */ C2967o(EnumC2945k1 enumC2945k1, Predicate predicate) {
        this.f1008b = enumC2945k1;
        this.f1009c = predicate;
    }

    public /* synthetic */ C2967o(EnumC2945k1 enumC2945k1, C3052D c3052d) {
        this.f1008b = enumC2945k1;
        this.f1009c = c3052d;
    }

    public /* synthetic */ C2967o(EnumC2945k1 enumC2945k1, C3080U c3080u) {
        this.f1008b = enumC2945k1;
        this.f1009c = c3080u;
    }

    public /* synthetic */ C2967o(EnumC2945k1 enumC2945k1, C3103i0 c3103i0) {
        this.f1008b = enumC2945k1;
        this.f1009c = c3103i0;
    }

    public /* synthetic */ C2967o(C2960m4 c2960m4, Consumer consumer) {
        this.f1008b = c2960m4;
        this.f1009c = consumer;
    }

    public /* synthetic */ C2967o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1008b = atomicBoolean;
        this.f1009c = concurrentHashMap;
    }
}
