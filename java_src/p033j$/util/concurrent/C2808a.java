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
    public final /* synthetic */ int f729a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f730b;

    /* renamed from: c */
    public final /* synthetic */ Object f731c;

    public /* synthetic */ C2808a(BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f730b = biConsumer;
        this.f731c = biConsumer2;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f730b).accept(obj);
        ((Consumer) this.f731c).accept(obj);
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        Objects.requireNonNull(function);
        return new C2808a(this, function);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f730b).apply(((BiFunction) this.f731c).apply(obj, obj2));
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo124b(BiConsumer biConsumer) {
        switch (this.f729a) {
            case 0:
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
            default:
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
        }
    }

    public /* synthetic */ C2808a(BiFunction biFunction, Function function) {
        this.f731c = biFunction;
        this.f730b = function;
    }

    @Override // p033j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f729a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f730b;
                BiFunction biFunction = (BiFunction) this.f731c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                ((BiConsumer) this.f730b).accept(obj, obj2);
                ((BiConsumer) this.f731c).accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ C2808a(Consumer consumer, Consumer consumer2) {
        this.f730b = consumer;
        this.f731c = consumer2;
    }

    public /* synthetic */ C2808a(ConcurrentMap concurrentMap, BiFunction biFunction) {
        this.f730b = concurrentMap;
        this.f731c = biFunction;
    }
}
