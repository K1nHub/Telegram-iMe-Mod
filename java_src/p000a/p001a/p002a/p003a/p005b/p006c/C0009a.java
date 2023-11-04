package p000a.p001a.p002a.p003a.p005b.p006c;

import android.view.View;
import com.binance.android.binancepay.internal.activity.BinancePayActivity;
import kotlin.jvm.internal.Intrinsics;
import p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0011a;
/* renamed from: a.a.a.a.b.c.a */
/* loaded from: classes.dex */
public final class C0009a implements View$OnClickListenerC0011a.InterfaceC0012a {

    /* renamed from: a */
    public final /* synthetic */ BinancePayActivity f6a;

    /* renamed from: b */
    public final /* synthetic */ View$OnClickListenerC0011a f7b;

    public C0009a(BinancePayActivity binancePayActivity, View$OnClickListenerC0011a view$OnClickListenerC0011a) {
        this.f6a = binancePayActivity;
        this.f7b = view$OnClickListenerC0011a;
    }

    @Override // p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0011a.InterfaceC0012a
    /* renamed from: a */
    public void mo1159a(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f7b.dismiss();
        this.f6a.m1150a();
        this.f6a.finish();
    }

    @Override // p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0011a.InterfaceC0012a
    /* renamed from: b */
    public void mo1158b(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f7b.dismiss();
        this.f6a.finish();
    }
}
