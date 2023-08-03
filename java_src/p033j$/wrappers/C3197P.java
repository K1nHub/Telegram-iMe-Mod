package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3197P implements InterfaceC2826l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1244a;

    private /* synthetic */ C3197P(IntConsumer intConsumer) {
        this.f1244a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2826l m184b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3198Q ? ((C3198Q) intConsumer).f1245a : new C3197P(intConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public /* synthetic */ void accept(int i) {
        this.f1244a.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        return m184b(this.f1244a.andThen(C3198Q.m182a(interfaceC2826l)));
    }
}
