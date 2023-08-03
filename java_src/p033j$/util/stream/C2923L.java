package p033j$.util.stream;

import p033j$.lang.AbstractC2723a;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2832r;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2923L extends AbstractC3026d3 {

    /* renamed from: l */
    public final /* synthetic */ int f868l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f869m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2923L(AbstractC2968T abstractC2968T, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2821g interfaceC2821g) {
        super(abstractC3016c, enumC3033e4, i);
        this.f869m = interfaceC2821g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        switch (this.f868l) {
            case 0:
                return new C2911J(this, interfaceC3080m3);
            case 1:
                return new C2888F0(this, interfaceC3080m3);
            case 2:
                return new C2999Z0(this, interfaceC3080m3);
            case 3:
                return new C2996Y2(this, interfaceC3080m3);
            default:
                return new C2996Y2(this, interfaceC3080m3, (AbstractC2723a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2923L(AbstractC2924L0 abstractC2924L0, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2827m interfaceC2827m) {
        super(abstractC3016c, enumC3033e4, i);
        this.f869m = interfaceC2827m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2923L(AbstractC3024d1 abstractC3024d1, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2832r interfaceC2832r) {
        super(abstractC3016c, enumC3033e4, i);
        this.f869m = interfaceC2832r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2923L(AbstractC3032e3 abstractC3032e3, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, Consumer consumer) {
        super(abstractC3016c, enumC3033e4, i);
        this.f869m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2923L(AbstractC3032e3 abstractC3032e3, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, Predicate predicate) {
        super(abstractC3016c, enumC3033e4, i);
        this.f869m = predicate;
    }
}
