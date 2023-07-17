package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3197P implements InterfaceC2826l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1241a;

    private /* synthetic */ C3197P(IntConsumer intConsumer) {
        this.f1241a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2826l m166b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3198Q ? ((C3198Q) intConsumer).f1242a : new C3197P(intConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public /* synthetic */ void accept(int i) {
        this.f1241a.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2826l mo165l(InterfaceC2826l interfaceC2826l) {
        return m166b(this.f1241a.andThen(C3198Q.m164a(interfaceC2826l)));
    }
}
