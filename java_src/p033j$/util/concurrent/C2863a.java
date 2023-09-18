package p033j$.util.concurrent;

import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
/* renamed from: j$.util.concurrent.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2863a implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a */
    public final /* synthetic */ int f730a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f731b;

    /* renamed from: c */
    public final /* synthetic */ Object f732c;

    public /* synthetic */ C2863a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f731b = biConsumer;
        this.f732c = biConsumer2;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f731b).accept(obj);
        ((Consumer) this.f732c).accept(obj);
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2863a(this, function);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f731b).apply(((BiFunction) this.f732c).apply(obj, obj2));
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo124b(BiConsumer biConsumer) {
        switch (this.f730a) {
            case 0:
                Objects.requireNonNull(biConsumer);
                return new C2863a(this, biConsumer);
            default:
                Objects.requireNonNull(biConsumer);
                return new C2863a(this, biConsumer);
        }
    }

    public /* synthetic */ C2863a(BiFunction biFunction, Function function) {
        this.f732c = biFunction;
        this.f731b = function;
    }

    @Override // p033j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f730a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f731b;
                BiFunction biFunction = (BiFunction) this.f732c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f731b).accept(obj, obj2);
                ((BiConsumer) this.f732c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2863a(Consumer consumer, Consumer consumer2) {
        this.f731b = consumer;
        this.f732c = consumer2;
    }

    public /* synthetic */ C2863a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f731b = concurrentMap;
        this.f732c = biFunction;
    }
}
