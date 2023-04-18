package p034j$.util.concurrent;

import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
/* renamed from: j$.util.concurrent.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2643a implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a */
    public final /* synthetic */ int f641a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f642b;

    /* renamed from: c */
    public final /* synthetic */ Object f643c;

    public /* synthetic */ C2643a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f642b = biConsumer;
        this.f643c = biConsumer2;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f642b).accept(obj);
        ((Consumer) this.f643c).accept(obj);
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2643a(this, function);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f642b).apply(((BiFunction) this.f643c).apply(obj, obj2));
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo101b(BiConsumer biConsumer) {
        switch (this.f641a) {
            case 0:
                Objects.requireNonNull(biConsumer);
                return new C2643a(this, biConsumer);
            default:
                Objects.requireNonNull(biConsumer);
                return new C2643a(this, biConsumer);
        }
    }

    public /* synthetic */ C2643a(BiFunction biFunction, Function function) {
        this.f643c = biFunction;
        this.f642b = function;
    }

    @Override // p034j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f641a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f642b;
                BiFunction biFunction = (BiFunction) this.f643c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f642b).accept(obj, obj2);
                ((BiConsumer) this.f643c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2643a(Consumer consumer, Consumer consumer2) {
        this.f642b = consumer;
        this.f643c = consumer2;
    }

    public /* synthetic */ C2643a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f642b = concurrentMap;
        this.f643c = biFunction;
    }
}
