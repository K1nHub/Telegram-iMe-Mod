package com.iMe.p031ui.custom;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.model.wallet.home.pay.BinanceTransactionItem;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionStatus;
import com.iMe.storage.domain.model.staking.StakingOperationStatus;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TimeWithClockView.kt */
/* renamed from: com.iMe.ui.custom.TimeWithClockView */
/* loaded from: classes3.dex */
public final class TimeWithClockView extends AppCompatTextView {
    private final Lazy clockHeight$delegate;
    private final Lazy clockPadding$delegate;
    private final Lazy clockWidth$delegate;
    private boolean shouldDrawClock;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TimeWithClockView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ TimeWithClockView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimeWithClockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(TimeWithClockView$clockPadding$2.INSTANCE);
        this.clockPadding$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(TimeWithClockView$clockWidth$2.INSTANCE);
        this.clockWidth$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(TimeWithClockView$clockHeight$2.INSTANCE);
        this.clockHeight$delegate = lazy3;
        setupView();
    }

    private final int getClockPadding() {
        return ((Number) this.clockPadding$delegate.getValue()).intValue();
    }

    private final int getClockWidth() {
        return ((Number) this.clockWidth$delegate.getValue()).intValue();
    }

    private final int getClockHeight() {
        return ((Number) this.clockHeight$delegate.getValue()).intValue();
    }

    public final void applyColors() {
        setTextColor(Theme.getColor(Theme.key_chats_date));
    }

    public final void setTime(TransactionItem transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this.shouldDrawClock = transaction.getTransaction().getStatus() == Status.PENDING;
        setText(transaction.getTransactionTime());
    }

    public final void setTime(BinanceTransactionItem transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this.shouldDrawClock = transaction.getTransaction().getStatus() == BinanceTransactionStatus.PENDING;
        setText(transaction.getTransactionTime());
    }

    public final void setTime(StakingOperationItem operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        this.shouldDrawClock = operation.getStatus() == StakingOperationStatus.PENDING;
        setText(operation.getTransactionTimeText());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(getMeasuredWidth() + getClockWidth() + getClockPadding(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.save();
        canvas.translate(getClockHeight() + getClockPadding(), BitmapDescriptorFactory.HUE_RED);
        super.onDraw(canvas);
        canvas.restore();
        if (this.shouldDrawClock) {
            Theme.dialogs_clockDrawable.setBounds(0, 0, getClockWidth(), getClockHeight());
            canvas.translate(BitmapDescriptorFactory.HUE_RED, Theme.dialogs_clockDrawable.getIntrinsicHeight() / 3);
            Theme.dialogs_clockDrawable.draw(canvas);
            invalidate();
        }
    }

    private final void setupView() {
        applyColors();
        setTextSize(14.0f);
    }
}
