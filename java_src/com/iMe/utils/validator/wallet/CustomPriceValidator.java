package com.iMe.utils.validator.wallet;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import com.iMe.storage.domain.model.crypto.simplex.CustomPriceLimits;
import com.iMe.storage.domain.model.crypto.simplex.DigitalCurrency;
import com.iMe.storage.domain.model.crypto.simplex.FiatCurrency;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
/* compiled from: CustomPriceValidator.kt */
/* loaded from: classes4.dex */
public final class CustomPriceValidator {
    private final ResourceManager resourceManager;

    public CustomPriceValidator(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    public State validate(Float f, CustomPriceArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (f == null ? true : Intrinsics.areEqual(f, (float) BitmapDescriptorFactory.HUE_RED)) {
            return State.Invalid.DefaultOrEmpty.INSTANCE;
        }
        Currency fromCurrency = args.getFromCurrency();
        if (fromCurrency instanceof DigitalCurrency) {
            if (f.floatValue() > args.getLimits().getMaxCryptoAmount()) {
                ResourceManager resourceManager = this.resourceManager;
                int i = C3295R.string.wallet_crypto_buy_custom_price_dialog_validation_max_input;
                return new State.Invalid.AmountLimit(resourceManager.getString(i, StringExtKt.stripZeros$default(String.valueOf(args.getLimits().getMaxCryptoAmount()), (char) 0, 1, null) + ' ' + this.resourceManager.getString(args.getFromCurrency().getSymbol())), args.getLimits().getMaxFiatAmount());
            } else if (f.floatValue() < args.getLimits().getMinCryptoAmount()) {
                ResourceManager resourceManager2 = this.resourceManager;
                int i2 = C3295R.string.wallet_crypto_buy_custom_price_dialog_validation_min_input;
                return new State.Invalid.AmountLimit(resourceManager2.getString(i2, StringExtKt.stripZeros$default(String.valueOf(args.getLimits().getMinCryptoAmount()), (char) 0, 1, null) + ' ' + this.resourceManager.getString(args.getFromCurrency().getSymbol())), args.getLimits().getMinFiatAmount());
            } else {
                return State.Valid.INSTANCE;
            }
        } else if (fromCurrency instanceof FiatCurrency) {
            if (f.floatValue() > args.getLimits().getMaxFiatAmount()) {
                ResourceManager resourceManager3 = this.resourceManager;
                int i3 = C3295R.string.wallet_crypto_buy_custom_price_dialog_validation_max_input;
                return new State.Invalid.AmountLimit(resourceManager3.getString(i3, StringExtKt.stripZeros$default(String.valueOf(args.getLimits().getMaxFiatAmount()), (char) 0, 1, null) + ' ' + this.resourceManager.getString(args.getFromCurrency().getSymbol())), args.getLimits().getMaxCryptoAmount());
            } else if (f.floatValue() < args.getLimits().getMinFiatAmount()) {
                ResourceManager resourceManager4 = this.resourceManager;
                int i4 = C3295R.string.wallet_crypto_buy_custom_price_dialog_validation_min_input;
                return new State.Invalid.AmountLimit(resourceManager4.getString(i4, StringExtKt.stripZeros$default(String.valueOf(args.getLimits().getMinFiatAmount()), (char) 0, 1, null) + ' ' + this.resourceManager.getString(args.getFromCurrency().getSymbol())), args.getLimits().getMinCryptoAmount());
            } else {
                return State.Valid.INSTANCE;
            }
        } else {
            return State.Valid.INSTANCE;
        }
    }

    /* compiled from: CustomPriceValidator.kt */
    /* loaded from: classes4.dex */
    public static final class CustomPriceArgs {
        private final Currency fromCurrency;
        private final CustomPriceLimits limits;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CustomPriceArgs) {
                CustomPriceArgs customPriceArgs = (CustomPriceArgs) obj;
                return Intrinsics.areEqual(this.fromCurrency, customPriceArgs.fromCurrency) && Intrinsics.areEqual(this.limits, customPriceArgs.limits);
            }
            return false;
        }

        public int hashCode() {
            return (this.fromCurrency.hashCode() * 31) + this.limits.hashCode();
        }

        public String toString() {
            return "CustomPriceArgs(fromCurrency=" + this.fromCurrency + ", limits=" + this.limits + ')';
        }

        public CustomPriceArgs(Currency fromCurrency, CustomPriceLimits limits) {
            Intrinsics.checkNotNullParameter(fromCurrency, "fromCurrency");
            Intrinsics.checkNotNullParameter(limits, "limits");
            this.fromCurrency = fromCurrency;
            this.limits = limits;
        }

        public final Currency getFromCurrency() {
            return this.fromCurrency;
        }

        public final CustomPriceLimits getLimits() {
            return this.limits;
        }
    }

    /* compiled from: CustomPriceValidator.kt */
    /* loaded from: classes4.dex */
    public static abstract class State {
        public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: CustomPriceValidator.kt */
        /* loaded from: classes4.dex */
        public static final class Valid extends State {
            public static final Valid INSTANCE = new Valid();

            private Valid() {
                super(null);
            }
        }

        private State() {
        }

        /* compiled from: CustomPriceValidator.kt */
        /* loaded from: classes4.dex */
        public static abstract class Invalid extends State {
            public /* synthetic */ Invalid(String str, DefaultConstructorMarker defaultConstructorMarker) {
                this(str);
            }

            /* compiled from: CustomPriceValidator.kt */
            /* loaded from: classes4.dex */
            public static final class DefaultOrEmpty extends Invalid {
                public static final DefaultOrEmpty INSTANCE = new DefaultOrEmpty();

                private DefaultOrEmpty() {
                    super("", null);
                }
            }

            private Invalid(String str) {
                super(null);
            }

            /* compiled from: CustomPriceValidator.kt */
            /* loaded from: classes4.dex */
            public static final class AmountLimit extends Invalid {
                private final float amount;
                private final String errorText;

                public String getErrorText() {
                    return this.errorText;
                }

                public final float getAmount() {
                    return this.amount;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AmountLimit(String errorText, float f) {
                    super(errorText, null);
                    Intrinsics.checkNotNullParameter(errorText, "errorText");
                    this.errorText = errorText;
                    this.amount = f;
                }
            }
        }
    }
}
