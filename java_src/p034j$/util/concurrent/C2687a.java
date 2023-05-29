package p034j$.util.concurrent;

import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
/* renamed from: j$.util.concurrent.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2687a implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a */
    public final /* synthetic */ int f644a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f645b;

    /* renamed from: c */
    public final /* synthetic */ Object f646c;

    public /* synthetic */ C2687a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f645b = biConsumer;
        this.f646c = biConsumer2;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f645b).accept(obj);
        ((Consumer) this.f646c).accept(obj);
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2687a(this, function);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f645b).apply(((BiFunction) this.f646c).apply(obj, obj2));
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        switch (this.f644a) {
            case 0:
                Objects.requireNonNull(biConsumer);
                return new C2687a(this, biConsumer);
            default:
                Objects.requireNonNull(biConsumer);
                return new C2687a(this, biConsumer);
        }
    }

    public /* synthetic */ C2687a(BiFunction biFunction, Function function) {
        this.f646c = biFunction;
        this.f645b = function;
    }

    @Override // p034j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f644a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f645b;
                BiFunction biFunction = (BiFunction) this.f646c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f645b).accept(obj, obj2);
                ((BiConsumer) this.f646c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2687a(Consumer consumer, Consumer consumer2) {
        this.f645b = consumer;
        this.f646c = consumer2;
    }

    public /* synthetic */ C2687a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f645b = concurrentMap;
        this.f646c = biFunction;
    }
}
