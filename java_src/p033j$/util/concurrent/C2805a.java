package p033j$.util.concurrent;

import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
/* renamed from: j$.util.concurrent.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2805a implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a */
    public final /* synthetic */ int f776a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f777b;

    /* renamed from: c */
    public final /* synthetic */ Object f778c;

    public /* synthetic */ C2805a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f777b = biConsumer;
        this.f778c = biConsumer2;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f777b).accept(obj);
        ((Consumer) this.f778c).accept(obj);
    }

    @Override // p033j$.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f776a) {
            case 0:
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            default:
                return BiConsumer.CC.$default$andThen(this, biConsumer);
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f777b).apply(((BiFunction) this.f778c).apply(obj, obj2));
    }

    public /* synthetic */ C2805a(BiFunction biFunction, Function function) {
        this.f778c = biFunction;
        this.f777b = function;
    }

    @Override // p033j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f776a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f777b;
                BiFunction biFunction = (BiFunction) this.f778c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f777b).accept(obj, obj2);
                ((BiConsumer) this.f778c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2805a(Consumer consumer, Consumer consumer2) {
        this.f777b = consumer;
        this.f778c = consumer2;
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2805a(this, function);
    }

    public /* synthetic */ C2805a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f777b = concurrentMap;
        this.f778c = biFunction;
    }
}
