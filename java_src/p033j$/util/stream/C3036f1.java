package p033j$.util.stream;

import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C3036f1 extends AbstractC3060j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC3066k1 f1025c;

    /* renamed from: d */
    final /* synthetic */ Predicate f1026d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3036f1(EnumC3066k1 enumC3066k1, Predicate predicate) {
        super(enumC3066k1);
        this.f1025c = enumC3066k1;
        this.f1026d = predicate;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f1055a) {
            return;
        }
        boolean test = this.f1026d.test(obj);
        z = this.f1025c.f1061a;
        if (test == z) {
            this.f1055a = true;
            z2 = this.f1025c.f1062b;
            this.f1056b = z2;
        }
    }
}
