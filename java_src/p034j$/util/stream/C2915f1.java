package p034j$.util.stream;

import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C2915f1 extends AbstractC2939j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC2945k1 f943c;

    /* renamed from: d */
    final /* synthetic */ Predicate f944d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915f1(EnumC2945k1 enumC2945k1, Predicate predicate) {
        super(enumC2945k1);
        this.f943c = enumC2945k1;
        this.f944d = predicate;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f973a) {
            return;
        }
        boolean test = this.f944d.test(obj);
        z = this.f943c.f979a;
        if (test == z) {
            this.f973a = true;
            z2 = this.f943c.f980b;
            this.f974b = z2;
        }
    }
}
