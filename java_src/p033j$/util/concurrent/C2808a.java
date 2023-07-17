package p033j$.util.concurrent;

import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
/* renamed from: j$.util.concurrent.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2808a implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a */
    public final /* synthetic */ int f726a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f727b;

    /* renamed from: c */
    public final /* synthetic */ Object f728c;

    public /* synthetic */ C2808a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f727b = biConsumer;
        this.f728c = biConsumer2;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f727b).accept(obj);
        ((Consumer) this.f728c).accept(obj);
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2808a(this, function);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f727b).apply(((BiFunction) this.f728c).apply(obj, obj2));
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        switch (this.f726a) {
            case 0:
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
            default:
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
        }
    }

    public /* synthetic */ C2808a(BiFunction biFunction, Function function) {
        this.f728c = biFunction;
        this.f727b = function;
    }

    @Override // p033j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f726a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f727b;
                BiFunction biFunction = (BiFunction) this.f728c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f727b).accept(obj, obj2);
                ((BiConsumer) this.f728c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2808a(Consumer consumer, Consumer consumer2) {
        this.f727b = consumer;
        this.f728c = consumer2;
    }

    public /* synthetic */ C2808a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f727b = concurrentMap;
        this.f728c = biFunction;
    }
}
