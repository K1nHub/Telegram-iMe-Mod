package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2831P implements InterfaceC2460l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1150a;

    private /* synthetic */ C2831P(IntConsumer intConsumer) {
        this.f1150a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2460l m181b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C2832Q ? ((C2832Q) intConsumer).f1151a : new C2831P(intConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    public /* synthetic */ void accept(int i) {
        this.f1150a.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        return m181b(this.f1150a.andThen(C2832Q.m179a(interfaceC2460l)));
    }
}
