package com.smedialink.model.wallet.select;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectableToken.kt */
/* loaded from: classes3.dex */
public abstract class SelectableToken implements Parcelable {

    /* renamed from: id */
    private final String f284id;
    private final String name;
    private final String ticker;

    public /* synthetic */ SelectableToken(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3);
    }

    private SelectableToken(String str, String str2, String str3) {
        this.f284id = str;
        this.ticker = str2;
        this.name = str3;
    }

    public String getId() {
        return this.f284id;
    }

    public String getTicker() {
        return this.ticker;
    }

    public String getName() {
        return this.name;
    }

    /* compiled from: SelectableToken.kt */
    /* loaded from: classes3.dex */
    public static abstract class WithLogoUrl extends SelectableToken {

        /* renamed from: id */
        private final String f285id;
        private final String logoUrl;
        private final String name;
        private final String ticker;

        public /* synthetic */ WithLogoUrl(String str, String str2, String str3, String str4, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, str4);
        }

        @Override // com.smedialink.model.wallet.select.SelectableToken
        public String getId() {
            return this.f285id;
        }

        @Override // com.smedialink.model.wallet.select.SelectableToken
        public String getTicker() {
            return this.ticker;
        }

        @Override // com.smedialink.model.wallet.select.SelectableToken
        public String getName() {
            return this.name;
        }

        public String getLogoUrl() {
            return this.logoUrl;
        }

        private WithLogoUrl(String str, String str2, String str3, String str4) {
            super(str, str2, str3, null);
            this.f285id = str;
            this.ticker = str2;
            this.name = str3;
            this.logoUrl = str4;
        }

        /* compiled from: SelectableToken.kt */
        /* loaded from: classes3.dex */
        public static final class Binance extends WithLogoUrl {
            public static final Parcelable.Creator<Binance> CREATOR = new Creator();

            /* renamed from: id */
            private final String f286id;
            private final String logoUrl;
            private final String name;
            private final String ticker;

            /* compiled from: SelectableToken.kt */
            /* loaded from: classes3.dex */
            public static final class Creator implements Parcelable.Creator<Binance> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Binance createFromParcel(Parcel parcel) {
                    Intrinsics.checkNotNullParameter(parcel, "parcel");
                    return new Binance(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Binance[] newArray(int i) {
                    return new Binance[i];
                }
            }

            public static /* synthetic */ Binance copy$default(Binance binance, String str, String str2, String str3, String str4, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = binance.getId();
                }
                if ((i & 2) != 0) {
                    str2 = binance.getTicker();
                }
                if ((i & 4) != 0) {
                    str3 = binance.getName();
                }
                if ((i & 8) != 0) {
                    str4 = binance.getLogoUrl();
                }
                return binance.copy(str, str2, str3, str4);
            }

            public final String component1() {
                return getId();
            }

            public final String component2() {
                return getTicker();
            }

            public final String component3() {
                return getName();
            }

            public final String component4() {
                return getLogoUrl();
            }

            public final Binance copy(String id, String ticker, String name, String logoUrl) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(ticker, "ticker");
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
                return new Binance(id, ticker, name, logoUrl);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Binance) {
                    Binance binance = (Binance) obj;
                    return Intrinsics.areEqual(getId(), binance.getId()) && Intrinsics.areEqual(getTicker(), binance.getTicker()) && Intrinsics.areEqual(getName(), binance.getName()) && Intrinsics.areEqual(getLogoUrl(), binance.getLogoUrl());
                }
                return false;
            }

            public int hashCode() {
                return (((((getId().hashCode() * 31) + getTicker().hashCode()) * 31) + getName().hashCode()) * 31) + getLogoUrl().hashCode();
            }

            public String toString() {
                return "Binance(id=" + getId() + ", ticker=" + getTicker() + ", name=" + getName() + ", logoUrl=" + getLogoUrl() + ')';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel out, int i) {
                Intrinsics.checkNotNullParameter(out, "out");
                out.writeString(this.f286id);
                out.writeString(this.ticker);
                out.writeString(this.name);
                out.writeString(this.logoUrl);
            }

            @Override // com.smedialink.model.wallet.select.SelectableToken.WithLogoUrl, com.smedialink.model.wallet.select.SelectableToken
            public String getId() {
                return this.f286id;
            }

            @Override // com.smedialink.model.wallet.select.SelectableToken.WithLogoUrl, com.smedialink.model.wallet.select.SelectableToken
            public String getTicker() {
                return this.ticker;
            }

            @Override // com.smedialink.model.wallet.select.SelectableToken.WithLogoUrl, com.smedialink.model.wallet.select.SelectableToken
            public String getName() {
                return this.name;
            }

            @Override // com.smedialink.model.wallet.select.SelectableToken.WithLogoUrl
            public String getLogoUrl() {
                return this.logoUrl;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Binance(String id, String ticker, String name, String logoUrl) {
                super(id, ticker, name, logoUrl, null);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(ticker, "ticker");
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
                this.f286id = id;
                this.ticker = ticker;
                this.name = name;
                this.logoUrl = logoUrl;
            }
        }
    }

    /* compiled from: SelectableToken.kt */
    /* loaded from: classes3.dex */
    public static final class WithResLogo extends SelectableToken {
        public static final Parcelable.Creator<WithResLogo> CREATOR = new Creator();

        /* renamed from: id */
        private final String f287id;
        private final int logoRes;
        private final String name;
        private final String ticker;

        /* compiled from: SelectableToken.kt */
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<WithResLogo> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final WithResLogo createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new WithResLogo(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final WithResLogo[] newArray(int i) {
                return new WithResLogo[i];
            }
        }

        public static /* synthetic */ WithResLogo copy$default(WithResLogo withResLogo, String str, String str2, String str3, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = withResLogo.getId();
            }
            if ((i2 & 2) != 0) {
                str2 = withResLogo.getTicker();
            }
            if ((i2 & 4) != 0) {
                str3 = withResLogo.getName();
            }
            if ((i2 & 8) != 0) {
                i = withResLogo.logoRes;
            }
            return withResLogo.copy(str, str2, str3, i);
        }

        public final String component1() {
            return getId();
        }

        public final String component2() {
            return getTicker();
        }

        public final String component3() {
            return getName();
        }

        public final int component4() {
            return this.logoRes;
        }

        public final WithResLogo copy(String id, String ticker, String name, int i) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(ticker, "ticker");
            Intrinsics.checkNotNullParameter(name, "name");
            return new WithResLogo(id, ticker, name, i);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof WithResLogo) {
                WithResLogo withResLogo = (WithResLogo) obj;
                return Intrinsics.areEqual(getId(), withResLogo.getId()) && Intrinsics.areEqual(getTicker(), withResLogo.getTicker()) && Intrinsics.areEqual(getName(), withResLogo.getName()) && this.logoRes == withResLogo.logoRes;
            }
            return false;
        }

        public int hashCode() {
            return (((((getId().hashCode() * 31) + getTicker().hashCode()) * 31) + getName().hashCode()) * 31) + this.logoRes;
        }

        public String toString() {
            return "WithResLogo(id=" + getId() + ", ticker=" + getTicker() + ", name=" + getName() + ", logoRes=" + this.logoRes + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel out, int i) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeString(this.f287id);
            out.writeString(this.ticker);
            out.writeString(this.name);
            out.writeInt(this.logoRes);
        }

        @Override // com.smedialink.model.wallet.select.SelectableToken
        public String getId() {
            return this.f287id;
        }

        @Override // com.smedialink.model.wallet.select.SelectableToken
        public String getTicker() {
            return this.ticker;
        }

        @Override // com.smedialink.model.wallet.select.SelectableToken
        public String getName() {
            return this.name;
        }

        public final int getLogoRes() {
            return this.logoRes;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithResLogo(String id, String ticker, String name, int i) {
            super(id, ticker, name, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(ticker, "ticker");
            Intrinsics.checkNotNullParameter(name, "name");
            this.f287id = id;
            this.ticker = ticker;
            this.name = name;
            this.logoRes = i;
        }
    }
}
