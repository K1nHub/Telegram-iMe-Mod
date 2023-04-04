package p035j$.util.stream;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p035j$.util.concurrent.ConcurrentHashMap;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2687y;
import p035j$.util.function.Predicate;
import p035j$.wrappers.C3021D;
import p035j$.wrappers.C3049U;
import p035j$.wrappers.C3072i0;
/* renamed from: j$.util.stream.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2936o implements Consumer, InterfaceC2687y {

    /* renamed from: a */
    public final /* synthetic */ int f1009a = 5;

    /* renamed from: b */
    public final /* synthetic */ Object f1010b;

    /* renamed from: c */
    public final /* synthetic */ Object f1011c;

    public /* synthetic */ C2936o(BiConsumer biConsumer, Object obj) {
        this.f1010b = biConsumer;
        this.f1011c = obj;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1009a) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f1010b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f1011c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
                ((BiConsumer) this.f1010b).accept(this.f1011c, obj);
                return;
            default:
                ((C2929m4) this.f1010b).m377f((Consumer) this.f1011c, obj);
                return;
        }
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1009a) {
            case 0:
                return Objects.requireNonNull(consumer);
            case 5:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public Object get() {
        switch (this.f1009a) {
            case 1:
                return new C2902i1((EnumC2914k1) this.f1010b, (C3021D) this.f1011c);
            case 2:
                return new C2890g1((EnumC2914k1) this.f1010b, (C3049U) this.f1011c);
            case 3:
                return new C2896h1((EnumC2914k1) this.f1010b, (C3072i0) this.f1011c);
            default:
                return new C2884f1((EnumC2914k1) this.f1010b, (Predicate) this.f1011c);
        }
    }

    public /* synthetic */ C2936o(EnumC2914k1 enumC2914k1, Predicate predicate) {
        this.f1010b = enumC2914k1;
        this.f1011c = predicate;
    }

    public /* synthetic */ C2936o(EnumC2914k1 enumC2914k1, C3021D c3021d) {
        this.f1010b = enumC2914k1;
        this.f1011c = c3021d;
    }

    public /* synthetic */ C2936o(EnumC2914k1 enumC2914k1, C3049U c3049u) {
        this.f1010b = enumC2914k1;
        this.f1011c = c3049u;
    }

    public /* synthetic */ C2936o(EnumC2914k1 enumC2914k1, C3072i0 c3072i0) {
        this.f1010b = enumC2914k1;
        this.f1011c = c3072i0;
    }

    public /* synthetic */ C2936o(C2929m4 c2929m4, Consumer consumer) {
        this.f1010b = c2929m4;
        this.f1011c = consumer;
    }

    public /* synthetic */ C2936o(AtomicBoolean atomicBoolean, ConcurrentHashMap concurrentHashMap) {
        this.f1010b = atomicBoolean;
        this.f1011c = concurrentHashMap;
    }
}
