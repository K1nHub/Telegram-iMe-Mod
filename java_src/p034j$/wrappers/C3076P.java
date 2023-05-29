package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3076P implements InterfaceC2705l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1159a;

    private /* synthetic */ C3076P(IntConsumer intConsumer) {
        this.f1159a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2705l m166b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3077Q ? ((C3077Q) intConsumer).f1160a : new C3076P(intConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    public /* synthetic */ void accept(int i) {
        this.f1159a.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        return m166b(this.f1159a.andThen(C3077Q.m164a(interfaceC2705l)));
    }
}
