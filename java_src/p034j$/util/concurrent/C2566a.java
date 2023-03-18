package p034j$.util.concurrent;

import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
/* renamed from: j$.util.concurrent.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2566a implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a */
    public final /* synthetic */ int f640a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f641b;

    /* renamed from: c */
    public final /* synthetic */ Object f642c;

    public /* synthetic */ C2566a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f641b = biConsumer;
        this.f642c = biConsumer2;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f641b).accept(obj);
        ((Consumer) this.f642c).accept(obj);
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2566a(this, function);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f641b).apply(((BiFunction) this.f642c).apply(obj, obj2));
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        switch (this.f640a) {
            case 0:
                Objects.requireNonNull(biConsumer);
                return new C2566a(this, biConsumer);
            default:
                Objects.requireNonNull(biConsumer);
                return new C2566a(this, biConsumer);
        }
    }

    public /* synthetic */ C2566a(BiFunction biFunction, Function function) {
        this.f642c = biFunction;
        this.f641b = function;
    }

    @Override // p034j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f640a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f641b;
                BiFunction biFunction = (BiFunction) this.f642c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f641b).accept(obj, obj2);
                ((BiConsumer) this.f642c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2566a(Consumer consumer, Consumer consumer2) {
        this.f641b = consumer;
        this.f642c = consumer2;
    }

    public /* synthetic */ C2566a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f641b = concurrentMap;
        this.f642c = biFunction;
    }
}
