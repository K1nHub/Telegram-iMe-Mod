package p035j$.util.concurrent;

import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.BiFunction;
import p035j$.util.function.Consumer;
import p035j$.util.function.Function;
/* renamed from: j$.util.concurrent.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2656a implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a */
    public final /* synthetic */ int f646a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f647b;

    /* renamed from: c */
    public final /* synthetic */ Object f648c;

    public /* synthetic */ C2656a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f647b = biConsumer;
        this.f648c = biConsumer2;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f647b).accept(obj);
        ((Consumer) this.f648c).accept(obj);
    }

    @Override // p035j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2656a(this, function);
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f647b).apply(((BiFunction) this.f648c).apply(obj, obj2));
    }

    @Override // p035j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo115b(BiConsumer biConsumer) {
        switch (this.f646a) {
            case 0:
                Objects.requireNonNull(biConsumer);
                return new C2656a(this, biConsumer);
            default:
                Objects.requireNonNull(biConsumer);
                return new C2656a(this, biConsumer);
        }
    }

    public /* synthetic */ C2656a(BiFunction biFunction, Function function) {
        this.f648c = biFunction;
        this.f647b = function;
    }

    @Override // p035j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f646a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f647b;
                BiFunction biFunction = (BiFunction) this.f648c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f647b).accept(obj, obj2);
                ((BiConsumer) this.f648c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2656a(Consumer consumer, Consumer consumer2) {
        this.f647b = consumer;
        this.f648c = consumer2;
    }

    public /* synthetic */ C2656a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f647b = concurrentMap;
        this.f648c = biFunction;
    }
}
