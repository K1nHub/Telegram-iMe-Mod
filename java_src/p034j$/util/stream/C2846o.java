package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2597y;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2931D;
import p034j$.wrappers.C2959U;
import p034j$.wrappers.C2982i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2846o implements Consumer, InterfaceC2597y {

    /* renamed from: a */
    public final /* synthetic */ int f1003a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1004b;

    /* renamed from: c */
    public final /* synthetic */ Object f1005c;

    public /* synthetic */ C2846o(BiConsumer biConsumer, Object obj) {
        this.f1004b = biConsumer;
        this.f1005c = obj;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1003a) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f1004b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f1005c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
                ((BiConsumer) this.f1004b).accept(this.f1005c, obj);
                return;
            default:
                ((C2839m4) this.f1004b).m383f((Consumer) this.f1005c, obj);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1003a) {
            case 0:
                return Objects.requireNonNull(consumer);
            case 5:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public Object get() {
        switch (this.f1003a) {
            case 1:
                return new C2812i1((EnumC2824k1) this.f1004b, (C2931D) this.f1005c);
            case 2:
                return new C2800g1((EnumC2824k1) this.f1004b, (C2959U) this.f1005c);
            case 3:
                return new C2806h1((EnumC2824k1) this.f1004b, (C2982i0) this.f1005c);
            default:
                return new C2794f1((EnumC2824k1) this.f1004b, (Predicate) this.f1005c);
        }
    }

    public /* synthetic */ C2846o(EnumC2824k1 enumC2824k1, Predicate predicate) {
        this.f1004b = enumC2824k1;
        this.f1005c = predicate;
    }

    public /* synthetic */ C2846o(EnumC2824k1 enumC2824k1, C2931D c2931d) {
        this.f1004b = enumC2824k1;
        this.f1005c = c2931d;
    }

    public /* synthetic */ C2846o(EnumC2824k1 enumC2824k1, C2959U c2959u) {
        this.f1004b = enumC2824k1;
        this.f1005c = c2959u;
    }

    public /* synthetic */ C2846o(EnumC2824k1 enumC2824k1, C2982i0 c2982i0) {
        this.f1004b = enumC2824k1;
        this.f1005c = c2982i0;
    }

    public /* synthetic */ C2846o(C2839m4 c2839m4, Consumer consumer) {
        this.f1004b = c2839m4;
        this.f1005c = consumer;
    }

    public /* synthetic */ C2846o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1004b = atomicBoolean;
        this.f1005c = concurrentHashMap;
    }
}
