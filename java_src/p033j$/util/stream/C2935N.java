package p033j$.util.stream;

import p033j$.lang.AbstractC2723a;
import p033j$.lang.AbstractC2724b;
import p033j$.lang.AbstractC2725c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2822h;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2832r;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3224i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2935N extends AbstractC3018c1 {

    /* renamed from: l */
    public final /* synthetic */ int f884l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f885m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2935N(AbstractC2968T abstractC2968T, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2822h interfaceC2822h) {
        super(abstractC3016c, enumC3033e4, i);
        this.f885m = interfaceC2822h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        switch (this.f884l) {
            case 0:
                return new C2911J(this, interfaceC3080m3);
            case 1:
                return new C2888F0(this, interfaceC3080m3);
            case 2:
                return new C2999Z0(this, interfaceC3080m3);
            case 3:
                return new C2999Z0(this, interfaceC3080m3, (AbstractC2723a) null);
            case 4:
                return new C2999Z0(this, interfaceC3080m3, (AbstractC2724b) null);
            case 5:
                return new C2999Z0(this, interfaceC3080m3, (AbstractC2725c) null);
            case 6:
                return new C3106r(this, interfaceC3080m3);
            default:
                return new C2996Y2(this, interfaceC3080m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2935N(AbstractC2924L0 abstractC2924L0, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2828n interfaceC2828n) {
        super(abstractC3016c, enumC3033e4, i);
        this.f885m = interfaceC2828n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2935N(AbstractC3024d1 abstractC3024d1, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2831q interfaceC2831q) {
        super(abstractC3016c, enumC3033e4, i);
        this.f885m = interfaceC2831q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2935N(AbstractC3024d1 abstractC3024d1, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2832r interfaceC2832r) {
        super(abstractC3016c, enumC3033e4, i);
        this.f885m = interfaceC2832r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2935N(AbstractC3024d1 abstractC3024d1, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2834t interfaceC2834t) {
        super(abstractC3016c, enumC3033e4, i);
        this.f885m = interfaceC2834t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2935N(AbstractC3024d1 abstractC3024d1, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, C3224i0 c3224i0) {
        super(abstractC3016c, enumC3033e4, i);
        this.f885m = c3224i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2935N(AbstractC3032e3 abstractC3032e3, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, Function function) {
        super(abstractC3016c, enumC3033e4, i);
        this.f885m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2935N(AbstractC3032e3 abstractC3032e3, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, ToLongFunction toLongFunction) {
        super(abstractC3016c, enumC3033e4, i);
        this.f885m = toLongFunction;
    }
}
