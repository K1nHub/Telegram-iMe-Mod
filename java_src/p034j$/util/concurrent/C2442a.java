package p034j$.util.concurrent;

import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
/* renamed from: j$.util.concurrent.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2442a implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a */
    public final /* synthetic */ int f635a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f636b;

    /* renamed from: c */
    public final /* synthetic */ Object f637c;

    public /* synthetic */ C2442a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f636b = biConsumer;
        this.f637c = biConsumer2;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f636b).accept(obj);
        ((Consumer) this.f637c).accept(obj);
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2442a(this, function);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f636b).apply(((BiFunction) this.f637c).apply(obj, obj2));
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        switch (this.f635a) {
            case 0:
                Objects.requireNonNull(biConsumer);
                return new C2442a(this, biConsumer);
            default:
                Objects.requireNonNull(biConsumer);
                return new C2442a(this, biConsumer);
        }
    }

    public /* synthetic */ C2442a(BiFunction biFunction, Function function) {
        this.f637c = biFunction;
        this.f636b = function;
    }

    @Override // p034j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f635a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f636b;
                BiFunction biFunction = (BiFunction) this.f637c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f636b).accept(obj, obj2);
                ((BiConsumer) this.f637c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2442a(Consumer consumer, Consumer consumer2) {
        this.f636b = consumer;
        this.f637c = consumer2;
    }

    public /* synthetic */ C2442a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f636b = concurrentMap;
        this.f637c = biFunction;
    }
}
