package p033j$.util.concurrent;

import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
/* renamed from: j$.util.concurrent.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2947a implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a */
    public final /* synthetic */ int f739a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f740b;

    /* renamed from: c */
    public final /* synthetic */ Object f741c;

    public /* synthetic */ C2947a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f740b = biConsumer;
        this.f741c = biConsumer2;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f740b).accept(obj);
        ((Consumer) this.f741c).accept(obj);
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2947a(this, function);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f740b).apply(((BiFunction) this.f741c).apply(obj, obj2));
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo124b(BiConsumer biConsumer) {
        switch (this.f739a) {
            case 0:
                Objects.requireNonNull(biConsumer);
                return new C2947a(this, biConsumer);
            default:
                Objects.requireNonNull(biConsumer);
                return new C2947a(this, biConsumer);
        }
    }

    public /* synthetic */ C2947a(BiFunction biFunction, Function function) {
        this.f741c = biFunction;
        this.f740b = function;
    }

    @Override // p033j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f739a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f740b;
                BiFunction biFunction = (BiFunction) this.f741c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f740b).accept(obj, obj2);
                ((BiConsumer) this.f741c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2947a(Consumer consumer, Consumer consumer2) {
        this.f740b = consumer;
        this.f741c = consumer2;
    }

    public /* synthetic */ C2947a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f740b = concurrentMap;
        this.f741c = biFunction;
    }
}
