package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3071P implements InterfaceC2700l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1159a;

    private /* synthetic */ C3071P(IntConsumer intConsumer) {
        this.f1159a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2700l m166b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3072Q ? ((C3072Q) intConsumer).f1160a : new C3071P(intConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    public /* synthetic */ void accept(int i) {
        this.f1159a.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        return m166b(this.f1159a.andThen(C3072Q.m164a(interfaceC2700l)));
    }
}
