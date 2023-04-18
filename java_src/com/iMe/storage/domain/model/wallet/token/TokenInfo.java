package com.iMe.storage.domain.model.wallet.token;

import com.iMe.storage.domain.utils.crypto.Convert;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenInfo.kt */
/* loaded from: classes3.dex */
public abstract class TokenInfo {
    public static final Companion Companion = new Companion(null);
    private static final Lazy<List<TokenInfo>> supportedTokens$delegate;
    private final TokenCode code;
    private final int decimals;
    private final int fullName;
    private final int logo;
    private final int maxInputDigits;
    private final int shortName;
    private final int site;
    private final int smallWhiteIcon;
    private final int sortPosition;
    private final TokenType tokenType;

    public /* synthetic */ TokenInfo(TokenCode tokenCode, int i, int i2, int i3, int i4, TokenType tokenType, int i5, int i6, int i7, int i8, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenCode, i, i2, i3, i4, tokenType, i5, i6, i7, i8);
    }

    public static final TokenInfo map(TokenCode tokenCode) {
        return Companion.map(tokenCode);
    }

    public static final TokenInfo map(String str) {
        return Companion.map(str);
    }

    private TokenInfo(TokenCode tokenCode, int i, int i2, int i3, int i4, TokenType tokenType, int i5, int i6, int i7, int i8) {
        this.code = tokenCode;
        this.logo = i;
        this.smallWhiteIcon = i2;
        this.fullName = i3;
        this.shortName = i4;
        this.tokenType = tokenType;
        this.decimals = i5;
        this.maxInputDigits = i6;
        this.sortPosition = i7;
        this.site = i8;
    }

    public TokenCode getCode() {
        return this.code;
    }

    public int getLogo() {
        return this.logo;
    }

    public int getSmallWhiteIcon() {
        return this.smallWhiteIcon;
    }

    public int getFullName() {
        return this.fullName;
    }

    public int getShortName() {
        return this.shortName;
    }

    public TokenType getTokenType() {
        return this.tokenType;
    }

    public int getDecimals() {
        return this.decimals;
    }

    public int getMaxInputDigits() {
        return this.maxInputDigits;
    }

    public int getSortPosition() {
        return this.sortPosition;
    }

    public int getSite() {
        return this.site;
    }

    /* compiled from: TokenInfo.kt */
    /* loaded from: classes3.dex */
    public static class Basic extends TokenInfo {
        private final TokenCode code;
        private final int decimals;
        private final int fullName;
        private final int logo;
        private final int maxInputDigits;
        private final int shortName;
        private final int site;
        private final int smallWhiteIcon;
        private final int sortPosition;
        private final TokenType tokenType;

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public TokenCode getCode() {
            return this.code;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getLogo() {
            return this.logo;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getSmallWhiteIcon() {
            return this.smallWhiteIcon;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getFullName() {
            return this.fullName;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getShortName() {
            return this.shortName;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public TokenType getTokenType() {
            return this.tokenType;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getDecimals() {
            return this.decimals;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getMaxInputDigits() {
            return this.maxInputDigits;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getSortPosition() {
            return this.sortPosition;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getSite() {
            return this.site;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Basic(TokenCode code, int i, int i2, int i3, int i4, TokenType tokenType, int i5, int i6, int i7, int i8) {
            super(code, i, i2, i3, i4, tokenType, i5, i6, i7, i8, null);
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(tokenType, "tokenType");
            this.code = code;
            this.logo = i;
            this.smallWhiteIcon = i2;
            this.fullName = i3;
            this.shortName = i4;
            this.tokenType = tokenType;
            this.decimals = i5;
            this.maxInputDigits = i6;
            this.sortPosition = i7;
            this.site = i8;
        }

        /* compiled from: TokenInfo.kt */
        /* loaded from: classes3.dex */
        public static final class UNKNOWN extends Basic {
            public static final UNKNOWN INSTANCE = new UNKNOWN();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private UNKNOWN() {
                /*
                    r11 = this;
                    com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.UNKNOWN
                    com.iMe.storage.domain.model.wallet.token.TokenType r6 = com.iMe.storage.domain.model.wallet.token.TokenType.CRYPTO
                    int r9 = r1.ordinal()
                    r2 = 0
                    r3 = 0
                    r4 = 0
                    r5 = 0
                    r7 = 0
                    r8 = 0
                    r10 = -1
                    r0 = r11
                    r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Basic.UNKNOWN.<init>():void");
            }
        }
    }

    /* compiled from: TokenInfo.kt */
    /* loaded from: classes3.dex */
    public static class Crypto extends TokenInfo {
        private final TokenCode code;
        private final int decimals;
        private final int fullName;
        private final int logo;
        private final int maxInputDigits;
        private final int shortName;
        private final int site;
        private final int smallWhiteIcon;
        private final int sortPosition;
        private final TokenType tokenType;

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public TokenCode getCode() {
            return this.code;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getLogo() {
            return this.logo;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getSmallWhiteIcon() {
            return this.smallWhiteIcon;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getFullName() {
            return this.fullName;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getShortName() {
            return this.shortName;
        }

        public /* synthetic */ Crypto(TokenCode tokenCode, int i, int i2, int i3, int i4, TokenType tokenType, int i5, int i6, int i7, int i8, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(tokenCode, i, i2, i3, i4, (i9 & 32) != 0 ? TokenType.CRYPTO : tokenType, i5, i6, i7, i8);
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public TokenType getTokenType() {
            return this.tokenType;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getDecimals() {
            return this.decimals;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getMaxInputDigits() {
            return this.maxInputDigits;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getSortPosition() {
            return this.sortPosition;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getSite() {
            return this.site;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Crypto(TokenCode code, int i, int i2, int i3, int i4, TokenType tokenType, int i5, int i6, int i7, int i8) {
            super(code, i, i2, i3, i4, tokenType, i5, i6, i7, i8, null);
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(tokenType, "tokenType");
            this.code = code;
            this.logo = i;
            this.smallWhiteIcon = i2;
            this.fullName = i3;
            this.shortName = i4;
            this.tokenType = tokenType;
            this.decimals = i5;
            this.maxInputDigits = i6;
            this.sortPosition = i7;
            this.site = i8;
        }

        /* compiled from: TokenInfo.kt */
        /* loaded from: classes3.dex */
        public static class Ethereum extends Crypto {
            private final TokenCode code;
            private final int decimals;
            private final int fullName;
            private final int logo;
            private final int maxInputDigits;
            private final int shortName;
            private final int site;
            private final int smallWhiteIcon;
            private final int sortPosition;
            private final TokenType tokenType;
            private final Convert.Unit weiConvertUnit;

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public TokenCode getCode() {
                return this.code;
            }

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public int getLogo() {
                return this.logo;
            }

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public int getSmallWhiteIcon() {
                return this.smallWhiteIcon;
            }

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public int getFullName() {
                return this.fullName;
            }

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public int getShortName() {
                return this.shortName;
            }

            public /* synthetic */ Ethereum(TokenCode tokenCode, int i, int i2, int i3, int i4, TokenType tokenType, int i5, int i6, int i7, int i8, Convert.Unit unit, int i9, DefaultConstructorMarker defaultConstructorMarker) {
                this(tokenCode, i, i2, i3, i4, (i9 & 32) != 0 ? TokenType.CRYPTO : tokenType, i5, i6, i7, i8, unit);
            }

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public TokenType getTokenType() {
                return this.tokenType;
            }

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public int getDecimals() {
                return this.decimals;
            }

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public int getMaxInputDigits() {
                return this.maxInputDigits;
            }

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public int getSortPosition() {
                return this.sortPosition;
            }

            @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto, com.iMe.storage.domain.model.wallet.token.TokenInfo
            public int getSite() {
                return this.site;
            }

            public final Convert.Unit getWeiConvertUnit() {
                return this.weiConvertUnit;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Ethereum(TokenCode code, int i, int i2, int i3, int i4, TokenType tokenType, int i5, int i6, int i7, int i8, Convert.Unit weiConvertUnit) {
                super(code, i, i2, i3, i4, tokenType, i5, i6, i7, i8);
                Intrinsics.checkNotNullParameter(code, "code");
                Intrinsics.checkNotNullParameter(tokenType, "tokenType");
                Intrinsics.checkNotNullParameter(weiConvertUnit, "weiConvertUnit");
                this.code = code;
                this.logo = i;
                this.smallWhiteIcon = i2;
                this.fullName = i3;
                this.shortName = i4;
                this.tokenType = tokenType;
                this.decimals = i5;
                this.maxInputDigits = i6;
                this.sortPosition = i7;
                this.site = i8;
                this.weiConvertUnit = weiConvertUnit;
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class ETH extends Ethereum {
                public static final ETH INSTANCE = new ETH();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private ETH() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.ETHER
                        int r2 = com.iMe.storage.R$drawable.fork_ic_eth_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_eth_26
                        int r4 = com.iMe.storage.R$string.currency_eth
                        int r5 = com.iMe.storage.R$string.currency_short_eth
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_eth_site
                        r6 = 0
                        r7 = 8
                        r8 = 6
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.ETH.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class LIME extends Ethereum {
                public static final LIME INSTANCE = new LIME();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private LIME() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.LIME
                        int r2 = com.iMe.storage.R$drawable.fork_ic_lime_logo
                        int r4 = com.iMe.storage.R$string.currency_lime
                        int r5 = com.iMe.storage.R$string.currency_short_lime
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_lime_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.LIME.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class USDT extends Ethereum {
                public static final USDT INSTANCE = new USDT();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private USDT() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.USDT
                        int r2 = com.iMe.storage.R$drawable.fork_ic_tether_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_usdt_26
                        int r4 = com.iMe.storage.R$string.currency_usdt
                        int r5 = com.iMe.storage.R$string.currency_short_usdt
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.MWEI
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_usdt_site
                        r6 = 0
                        r7 = 6
                        r8 = 8
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.USDT.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class BNB extends Ethereum {
                public static final BNB INSTANCE = new BNB();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private BNB() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.BNB
                        int r2 = com.iMe.storage.R$drawable.fork_ic_bnb_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_bnb_26
                        int r4 = com.iMe.storage.R$string.currency_bnb
                        int r5 = com.iMe.storage.R$string.currency_short_bnb
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_bnb_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.BNB.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class BUSD extends Ethereum {
                public static final BUSD INSTANCE = new BUSD();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private BUSD() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.BUSD
                        int r2 = com.iMe.storage.R$drawable.fork_ic_busd_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_busd_26
                        int r4 = com.iMe.storage.R$string.currency_busd
                        int r5 = com.iMe.storage.R$string.currency_short_busd
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_busd_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.BUSD.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class LINK extends Ethereum {
                public static final LINK INSTANCE = new LINK();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private LINK() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.LINK
                        int r2 = com.iMe.storage.R$drawable.fork_ic_chainlink_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_chainlink_26
                        int r4 = com.iMe.storage.R$string.currency_link
                        int r5 = com.iMe.storage.R$string.currency_short_link
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_link_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.LINK.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class WBTC extends Ethereum {
                public static final WBTC INSTANCE = new WBTC();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private WBTC() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.WBTC
                        int r2 = com.iMe.storage.R$drawable.fork_ic_wrapped_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_wrapped_26
                        int r4 = com.iMe.storage.R$string.currency_wbtc
                        int r5 = com.iMe.storage.R$string.currency_short_wbtc
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.WEI8
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_wbtc_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.WBTC.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class MATIC extends Ethereum {
                public static final MATIC INSTANCE = new MATIC();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private MATIC() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.MATIC
                        int r2 = com.iMe.storage.R$drawable.fork_ic_polygon_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_polygon_26
                        int r4 = com.iMe.storage.R$string.currency_matic
                        int r5 = com.iMe.storage.R$string.currency_short_matic
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_matic_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.MATIC.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class FIL extends Ethereum {
                public static final FIL INSTANCE = new FIL();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private FIL() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.FIL
                        int r2 = com.iMe.storage.R$drawable.fork_ic_fil_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_fil_26
                        int r4 = com.iMe.storage.R$string.currency_fil
                        int r5 = com.iMe.storage.R$string.currency_short_fil
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_fil_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.FIL.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class OKB extends Ethereum {
                public static final OKB INSTANCE = new OKB();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private OKB() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.OKB
                        int r2 = com.iMe.storage.R$drawable.fork_ic_okex_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_okex_26
                        int r4 = com.iMe.storage.R$string.currency_okb
                        int r5 = com.iMe.storage.R$string.currency_short_okb
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_okb_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.OKB.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class LANC extends Ethereum {
                public static final LANC INSTANCE = new LANC();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private LANC() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.LANC
                        int r2 = com.iMe.storage.R$drawable.fork_ic_lanceria_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_lanceria_26
                        int r4 = com.iMe.storage.R$string.currency_lank
                        int r5 = com.iMe.storage.R$string.currency_short_lank
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_lank_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.LANC.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* renamed from: com.iMe.storage.domain.model.wallet.token.TokenInfo$Crypto$Ethereum$GT */
            /* loaded from: classes3.dex */
            public static final class C1908GT extends Ethereum {
                public static final C1908GT INSTANCE = new C1908GT();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private C1908GT() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.GT
                        int r2 = com.iMe.storage.R$drawable.fork_ic_gatechain_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_gatechain_26
                        int r4 = com.iMe.storage.R$string.currency_gt
                        int r5 = com.iMe.storage.R$string.currency_short_gt
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_gt_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.C1908GT.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class LIT extends Ethereum {
                public static final LIT INSTANCE = new LIT();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private LIT() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.LIT
                        int r2 = com.iMe.storage.R$drawable.fork_ic_litentry_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_litentry_26
                        int r4 = com.iMe.storage.R$string.currency_lit
                        int r5 = com.iMe.storage.R$string.currency_short_lit
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_lit_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.LIT.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class PRQ extends Ethereum {
                public static final PRQ INSTANCE = new PRQ();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private PRQ() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.PRQ
                        int r2 = com.iMe.storage.R$drawable.fork_ic_parsiq_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_parsiq_26
                        int r4 = com.iMe.storage.R$string.currency_prq
                        int r5 = com.iMe.storage.R$string.currency_short_prq
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_prq_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.PRQ.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class UFT extends Ethereum {
                public static final UFT INSTANCE = new UFT();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private UFT() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.UFT
                        int r2 = com.iMe.storage.R$drawable.fork_ic_unilend_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_unilend_26
                        int r4 = com.iMe.storage.R$string.currency_uft
                        int r5 = com.iMe.storage.R$string.currency_short_uft
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_uft_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.UFT.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class TRU extends Ethereum {
                public static final TRU INSTANCE = new TRU();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private TRU() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.TRU
                        int r2 = com.iMe.storage.R$drawable.fork_ic_truefi_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_truefi_26
                        int r4 = com.iMe.storage.R$string.currency_tru
                        int r5 = com.iMe.storage.R$string.currency_short_tru
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.WEI8
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_tru_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.TRU.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class HAPI extends Ethereum {
                public static final HAPI INSTANCE = new HAPI();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private HAPI() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.HAPI
                        int r2 = com.iMe.storage.R$drawable.fork_ic_hapi_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_hapi_26
                        int r4 = com.iMe.storage.R$string.currency_hapi
                        int r5 = com.iMe.storage.R$string.currency_short_hapi
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_hapi_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.HAPI.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class TARA extends Ethereum {
                public static final TARA INSTANCE = new TARA();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private TARA() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.TARA
                        int r2 = com.iMe.storage.R$drawable.fork_ic_taraxa_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_taraxa_26
                        int r4 = com.iMe.storage.R$string.currency_tara
                        int r5 = com.iMe.storage.R$string.currency_short_tara
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_tara_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.TARA.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class BCUG extends Ethereum {
                public static final BCUG INSTANCE = new BCUG();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private BCUG() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.BCUG
                        int r2 = com.iMe.storage.R$drawable.fork_ic_blockchain_cuties_universe_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_blockchain_cuties_universe_26
                        int r4 = com.iMe.storage.R$string.currency_bcug
                        int r5 = com.iMe.storage.R$string.currency_short_bcug
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_bcug_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.BCUG.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class PCNT extends Ethereum {
                public static final PCNT INSTANCE = new PCNT();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private PCNT() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.PCNT
                        int r2 = com.iMe.storage.R$drawable.fork_ic_playcent_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_playcent_26
                        int r4 = com.iMe.storage.R$string.currency_pcnt
                        int r5 = com.iMe.storage.R$string.currency_short_pcnt
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_pcnt_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.PCNT.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class SIG extends Ethereum {
                public static final SIG INSTANCE = new SIG();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private SIG() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.SIG
                        int r2 = com.iMe.storage.R$drawable.fork_ic_xsigma_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_xsigma_26
                        int r4 = com.iMe.storage.R$string.currency_sig
                        int r5 = com.iMe.storage.R$string.currency_short_sig
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_sig_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.SIG.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class UFI extends Ethereum {
                public static final UFI INSTANCE = new UFI();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private UFI() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.UFI
                        int r2 = com.iMe.storage.R$drawable.fork_ic_purefi_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_purefi_26
                        int r4 = com.iMe.storage.R$string.currency_ufi
                        int r5 = com.iMe.storage.R$string.currency_short_ufi
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_ufi_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.UFI.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class DHV extends Ethereum {
                public static final DHV INSTANCE = new DHV();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private DHV() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.DHV
                        int r2 = com.iMe.storage.R$drawable.fork_ic_de_hive_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_de_hive_26
                        int r4 = com.iMe.storage.R$string.currency_dhv
                        int r5 = com.iMe.storage.R$string.currency_short_dhv
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_dhv_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.DHV.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class OLCF extends Ethereum {
                public static final OLCF INSTANCE = new OLCF();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private OLCF() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.OLCF
                        int r2 = com.iMe.storage.R$drawable.fork_ic_olcf_logo
                        int r4 = com.iMe.storage.R$string.currency_olcf
                        int r5 = com.iMe.storage.R$string.currency_short_olcf
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_olcf_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.OLCF.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class ATD extends Ethereum {
                public static final ATD INSTANCE = new ATD();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private ATD() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.ATD
                        int r2 = com.iMe.storage.R$drawable.fork_ic_a_2_dao_logo
                        int r3 = com.iMe.storage.R$drawable.fork_ic_a_2_dao_26
                        int r4 = com.iMe.storage.R$string.currency_atd
                        int r5 = com.iMe.storage.R$string.currency_short_atd
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_atd_site
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.ATD.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class DEGO extends Ethereum {
                public static final DEGO INSTANCE = new DEGO();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private DEGO() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.DEGO
                        int r2 = com.iMe.storage.R$drawable.fork_ic_dego_logo
                        int r4 = com.iMe.storage.R$string.currency_dego
                        int r5 = com.iMe.storage.R$string.currency_short_dego
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_dego_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.DEGO.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class PRE extends Ethereum {
                public static final PRE INSTANCE = new PRE();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private PRE() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.PRE
                        int r2 = com.iMe.storage.R$drawable.fork_ic_pre_logo
                        int r4 = com.iMe.storage.R$string.currency_pre
                        int r5 = com.iMe.storage.R$string.currency_short_pre
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_pre_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.PRE.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class EQX extends Ethereum {
                public static final EQX INSTANCE = new EQX();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private EQX() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.EQX
                        int r2 = com.iMe.storage.R$drawable.fork_ic_eqx_logo
                        int r4 = com.iMe.storage.R$string.currency_eqx
                        int r5 = com.iMe.storage.R$string.currency_short_eqx
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_eqx_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.EQX.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class LSS extends Ethereum {
                public static final LSS INSTANCE = new LSS();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private LSS() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.LSS
                        int r2 = com.iMe.storage.R$drawable.fork_ic_lss_logo
                        int r4 = com.iMe.storage.R$string.currency_lss
                        int r5 = com.iMe.storage.R$string.currency_short_lss
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_lss_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.LSS.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class GAINS extends Ethereum {
                public static final GAINS INSTANCE = new GAINS();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private GAINS() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.GAINS
                        int r2 = com.iMe.storage.R$drawable.fork_ic_gains_logo
                        int r4 = com.iMe.storage.R$string.currency_gains
                        int r5 = com.iMe.storage.R$string.currency_short_gains
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_gains_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.GAINS.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class UNN extends Ethereum {
                public static final UNN INSTANCE = new UNN();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private UNN() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.UNN
                        int r2 = com.iMe.storage.R$drawable.fork_ic_unn_logo
                        int r4 = com.iMe.storage.R$string.currency_unn
                        int r5 = com.iMe.storage.R$string.currency_short_unn
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_unn_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.UNN.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class DEXT extends Ethereum {
                public static final DEXT INSTANCE = new DEXT();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private DEXT() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.DEXT
                        int r2 = com.iMe.storage.R$drawable.fork_ic_dext_logo
                        int r4 = com.iMe.storage.R$string.currency_dext
                        int r5 = com.iMe.storage.R$string.currency_short_dext
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_dext_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.DEXT.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class TOMOE extends Ethereum {
                public static final TOMOE INSTANCE = new TOMOE();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private TOMOE() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.TOMOE
                        int r2 = com.iMe.storage.R$drawable.fork_ic_tomoe_logo
                        int r4 = com.iMe.storage.R$string.currency_tomoe
                        int r5 = com.iMe.storage.R$string.currency_short_tomoe
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_tomoe_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.TOMOE.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class FLURRY extends Ethereum {
                public static final FLURRY INSTANCE = new FLURRY();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private FLURRY() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.FLURRY
                        int r2 = com.iMe.storage.R$drawable.fork_ic_flurry_logo
                        int r4 = com.iMe.storage.R$string.currency_flurry
                        int r5 = com.iMe.storage.R$string.currency_short_flurry
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_flurry_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.FLURRY.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class FRM extends Ethereum {
                public static final FRM INSTANCE = new FRM();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private FRM() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.FRM
                        int r2 = com.iMe.storage.R$drawable.fork_ic_frm_logo
                        int r4 = com.iMe.storage.R$string.currency_frm
                        int r5 = com.iMe.storage.R$string.currency_short_frm
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.MWEI
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_frm_site
                        r3 = 0
                        r6 = 0
                        r7 = 6
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.FRM.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class DOP extends Ethereum {
                public static final DOP INSTANCE = new DOP();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private DOP() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.DOP
                        int r2 = com.iMe.storage.R$drawable.fork_ic_dop_logo
                        int r4 = com.iMe.storage.R$string.currency_dop
                        int r5 = com.iMe.storage.R$string.currency_short_dop
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_dop_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.DOP.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class GFX extends Ethereum {
                public static final GFX INSTANCE = new GFX();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private GFX() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.GFX
                        int r2 = com.iMe.storage.R$drawable.fork_ic_gamyfi_logo
                        int r4 = com.iMe.storage.R$string.currency_gfx
                        int r5 = com.iMe.storage.R$string.currency_short_gfx
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_gfx_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.GFX.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class D11 extends Ethereum {
                public static final D11 INSTANCE = new D11();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private D11() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.D11
                        int r2 = com.iMe.storage.R$drawable.fork_ic_defi_11_logo
                        int r4 = com.iMe.storage.R$string.currency_d_11
                        int r5 = com.iMe.storage.R$string.currency_short_D11
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_d_11_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.D11.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class DVD extends Ethereum {
                public static final DVD INSTANCE = new DVD();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private DVD() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.DVD
                        int r2 = com.iMe.storage.R$drawable.fork_ic_da_oventures_logo
                        int r4 = com.iMe.storage.R$string.currency_dvd
                        int r5 = com.iMe.storage.R$string.currency_short_dvd
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_dvd_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.DVD.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class METIS extends Ethereum {
                public static final METIS INSTANCE = new METIS();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private METIS() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.METIS
                        int r2 = com.iMe.storage.R$drawable.fork_ic_metis_logo
                        int r4 = com.iMe.storage.R$string.currency_metis
                        int r5 = com.iMe.storage.R$string.currency_short_metis
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_metis_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.METIS.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class CTSI extends Ethereum {
                public static final CTSI INSTANCE = new CTSI();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private CTSI() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.CTSI
                        int r2 = com.iMe.storage.R$drawable.fork_ic_cartesi_logo
                        int r4 = com.iMe.storage.R$string.currency_ctsi
                        int r5 = com.iMe.storage.R$string.currency_short_ctsi
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_ctsi_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.CTSI.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class SAITO extends Ethereum {
                public static final SAITO INSTANCE = new SAITO();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private SAITO() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.SAITO
                        int r2 = com.iMe.storage.R$drawable.fork_ic_saito_logo
                        int r4 = com.iMe.storage.R$string.currency_saito
                        int r5 = com.iMe.storage.R$string.currency_short_saito
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_saito_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.SAITO.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class ZCX extends Ethereum {
                public static final ZCX INSTANCE = new ZCX();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private ZCX() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.ZCX
                        int r2 = com.iMe.storage.R$drawable.fork_ic_unizen_logo
                        int r4 = com.iMe.storage.R$string.currency_zcx
                        int r5 = com.iMe.storage.R$string.currency_short_zcx
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_zcx_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.ZCX.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class CEEK extends Ethereum {
                public static final CEEK INSTANCE = new CEEK();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private CEEK() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.CEEK
                        int r2 = com.iMe.storage.R$drawable.fork_ic_ceek_vr_logo
                        int r4 = com.iMe.storage.R$string.currency_ceek
                        int r5 = com.iMe.storage.R$string.currency_short_ceek
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_ceek_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.CEEK.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class XEND extends Ethereum {
                public static final XEND INSTANCE = new XEND();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private XEND() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.XEND
                        int r2 = com.iMe.storage.R$drawable.fork_ic_xend_finance_logo
                        int r4 = com.iMe.storage.R$string.currency_xend
                        int r5 = com.iMe.storage.R$string.currency_short_xend
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_xend_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.XEND.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class SHR extends Ethereum {
                public static final SHR INSTANCE = new SHR();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private SHR() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.SHR
                        int r2 = com.iMe.storage.R$drawable.fork_ic_share_ring_logo
                        int r4 = com.iMe.storage.R$string.currency_shr
                        int r5 = com.iMe.storage.R$string.currency_short_shr
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_shr_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.SHR.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class BOSON extends Ethereum {
                public static final BOSON INSTANCE = new BOSON();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private BOSON() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.BOSON
                        int r2 = com.iMe.storage.R$drawable.fork_ic_boson_protocol_logo
                        int r4 = com.iMe.storage.R$string.currency_boson
                        int r5 = com.iMe.storage.R$string.currency_short_boson
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_boson_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.BOSON.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class KONO extends Ethereum {
                public static final KONO INSTANCE = new KONO();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private KONO() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.KONO
                        int r2 = com.iMe.storage.R$drawable.fork_ic_konomi_network_logo
                        int r4 = com.iMe.storage.R$string.currency_kono
                        int r5 = com.iMe.storage.R$string.currency_short_kono
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_kono_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.KONO.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class KFT extends Ethereum {
                public static final KFT INSTANCE = new KFT();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private KFT() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.KFT
                        int r2 = com.iMe.storage.R$drawable.fork_ic_knit_finance_logo
                        int r4 = com.iMe.storage.R$string.currency_kft
                        int r5 = com.iMe.storage.R$string.currency_short_kft
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_kft_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.KFT.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* renamed from: com.iMe.storage.domain.model.wallet.token.TokenInfo$Crypto$Ethereum$OM */
            /* loaded from: classes3.dex */
            public static final class C1910OM extends Ethereum {
                public static final C1910OM INSTANCE = new C1910OM();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private C1910OM() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.OM
                        int r2 = com.iMe.storage.R$drawable.fork_ic_mantra_dao_logo
                        int r4 = com.iMe.storage.R$string.currency_om
                        int r5 = com.iMe.storage.R$string.currency_short_om
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_om_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.C1910OM.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class ROYA extends Ethereum {
                public static final ROYA INSTANCE = new ROYA();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private ROYA() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.ROYA
                        int r2 = com.iMe.storage.R$drawable.fork_ic_royale_finance_logo
                        int r4 = com.iMe.storage.R$string.currency_roya
                        int r5 = com.iMe.storage.R$string.currency_short_roya
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_roya_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.ROYA.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class CVR extends Ethereum {
                public static final CVR INSTANCE = new CVR();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private CVR() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.CVR
                        int r2 = com.iMe.storage.R$drawable.fork_ic_cover_compared_logo
                        int r4 = com.iMe.storage.R$string.currency_cvr
                        int r5 = com.iMe.storage.R$string.currency_short_cvr
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_cvr_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.CVR.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class SKILL extends Ethereum {
                public static final SKILL INSTANCE = new SKILL();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private SKILL() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.SKILL
                        int r2 = com.iMe.storage.R$drawable.fork_ic_crypto_blades_logo
                        int r4 = com.iMe.storage.R$string.currency_skill
                        int r5 = com.iMe.storage.R$string.currency_short_skill
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_skill_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.SKILL.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class YAY extends Ethereum {
                public static final YAY INSTANCE = new YAY();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private YAY() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.YAY
                        int r2 = com.iMe.storage.R$drawable.fork_ic_yay_games_logo
                        int r4 = com.iMe.storage.R$string.currency_yay
                        int r5 = com.iMe.storage.R$string.currency_short_yay
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_yay_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.YAY.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class KABY extends Ethereum {
                public static final KABY INSTANCE = new KABY();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private KABY() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.KABY
                        int r2 = com.iMe.storage.R$drawable.fork_ic_kaby_arena_logo
                        int r4 = com.iMe.storage.R$string.currency_kaby
                        int r5 = com.iMe.storage.R$string.currency_short_kaby
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_kaby_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.KABY.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class USDO extends Ethereum {
                public static final USDO INSTANCE = new USDO();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private USDO() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.USDO
                        int r2 = com.iMe.storage.R$drawable.fork_ic_usdo_logo
                        int r4 = com.iMe.storage.R$string.currency_usdo
                        int r5 = com.iMe.storage.R$string.currency_short_usdo
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_usdo_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.USDO.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class FUSE extends Ethereum {
                public static final FUSE INSTANCE = new FUSE();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private FUSE() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.FUSE
                        int r2 = com.iMe.storage.R$drawable.fork_ic_fuse_logo
                        int r4 = com.iMe.storage.R$string.currency_fuse
                        int r5 = com.iMe.storage.R$string.currency_short_fuse
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_fuse_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.FUSE.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class USDC extends Ethereum {
                public static final USDC INSTANCE = new USDC();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private USDC() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.USDC
                        int r2 = com.iMe.storage.R$drawable.fork_ic_usdc_logo
                        int r4 = com.iMe.storage.R$string.currency_usdc
                        int r5 = com.iMe.storage.R$string.currency_short_usdc
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.MWEI
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_usdc_site
                        r3 = 0
                        r6 = 0
                        r7 = 6
                        r8 = 8
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.USDC.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class SAND extends Ethereum {
                public static final SAND INSTANCE = new SAND();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private SAND() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.SAND
                        int r2 = com.iMe.storage.R$drawable.fork_ic_sand_logo
                        int r4 = com.iMe.storage.R$string.currency_sand
                        int r5 = com.iMe.storage.R$string.currency_short_sand
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_sand_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.SAND.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class DAI extends Ethereum {
                public static final DAI INSTANCE = new DAI();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private DAI() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.DAI
                        int r2 = com.iMe.storage.R$drawable.fork_ic_dai_logo
                        int r4 = com.iMe.storage.R$string.currency_dai
                        int r5 = com.iMe.storage.R$string.currency_short_dai
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_dai_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.DAI.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class QUICK extends Ethereum {
                public static final QUICK INSTANCE = new QUICK();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private QUICK() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.QUICK
                        int r2 = com.iMe.storage.R$drawable.fork_ic_quickswap_logo
                        int r4 = com.iMe.storage.R$string.currency_quick
                        int r5 = com.iMe.storage.R$string.currency_short_quick
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_quick_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.QUICK.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class AAVE extends Ethereum {
                public static final AAVE INSTANCE = new AAVE();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private AAVE() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.AAVE
                        int r2 = com.iMe.storage.R$drawable.fork_ic_aave_logo
                        int r4 = com.iMe.storage.R$string.currency_aave
                        int r5 = com.iMe.storage.R$string.currency_short_aave
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_aave_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.AAVE.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class GNS extends Ethereum {
                public static final GNS INSTANCE = new GNS();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private GNS() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.GNS
                        int r2 = com.iMe.storage.R$drawable.fork_ic_gainsnetwork_logo
                        int r4 = com.iMe.storage.R$string.currency_gns
                        int r5 = com.iMe.storage.R$string.currency_short_gns
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_gns_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.GNS.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class MANA extends Ethereum {
                public static final MANA INSTANCE = new MANA();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private MANA() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.MANA
                        int r2 = com.iMe.storage.R$drawable.fork_ic_decentraland_logo
                        int r4 = com.iMe.storage.R$string.currency_mana
                        int r5 = com.iMe.storage.R$string.currency_short_mana
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_mana_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.MANA.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class GHST extends Ethereum {
                public static final GHST INSTANCE = new GHST();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private GHST() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.GHST
                        int r2 = com.iMe.storage.R$drawable.fork_ic_ghst_logo
                        int r4 = com.iMe.storage.R$string.currency_ghst
                        int r5 = com.iMe.storage.R$string.currency_short_ghst
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_ghst_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.GHST.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class UNI extends Ethereum {
                public static final UNI INSTANCE = new UNI();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private UNI() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.UNI
                        int r2 = com.iMe.storage.R$drawable.fork_ic_uni_logo
                        int r4 = com.iMe.storage.R$string.currency_uni
                        int r5 = com.iMe.storage.R$string.currency_short_uni
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_uni_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.UNI.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class TON extends Ethereum {
                public static final TON INSTANCE = new TON();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private TON() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.TON
                        int r2 = com.iMe.storage.R$drawable.fork_ic_ton_logo
                        int r4 = com.iMe.storage.R$string.currency_ton
                        int r5 = com.iMe.storage.R$string.currency_short_ton
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.GWEI
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_ton_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.TON.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class SHIB extends Ethereum {
                public static final SHIB INSTANCE = new SHIB();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private SHIB() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.SHIB
                        int r2 = com.iMe.storage.R$drawable.fork_ic_shiba_58
                        int r4 = com.iMe.storage.R$string.currency_shiba
                        int r5 = com.iMe.storage.R$string.currency_short_shiba
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_shiba_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 12
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.SHIB.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class INF extends Ethereum {
                public static final INF INSTANCE = new INF();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private INF() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.INF
                        int r2 = com.iMe.storage.R$drawable.fork_ic_infam_logo
                        int r4 = com.iMe.storage.R$string.currency_infam
                        int r5 = com.iMe.storage.R$string.currency_short_infam
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_infam_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.INF.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class KOM extends Ethereum {
                public static final KOM INSTANCE = new KOM();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private KOM() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.KOM
                        int r2 = com.iMe.storage.R$drawable.fork_ic_kommunitas_logo
                        int r4 = com.iMe.storage.R$string.currency_kommunitas
                        int r5 = com.iMe.storage.R$string.currency_short_kommunitas
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.WEI8
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_kommunitas_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.KOM.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class FTM extends Ethereum {
                public static final FTM INSTANCE = new FTM();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private FTM() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.FTM
                        int r2 = com.iMe.storage.R$drawable.fork_ic_fantom_logo
                        int r4 = com.iMe.storage.R$string.currency_fantom
                        int r5 = com.iMe.storage.R$string.currency_short_fantom
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_fantom_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.FTM.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class PPM extends Ethereum {
                public static final PPM INSTANCE = new PPM();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private PPM() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.PPM
                        int r2 = com.iMe.storage.R$drawable.fork_ic_ppm_logo
                        int r4 = com.iMe.storage.R$string.currency_punkpanda
                        int r5 = com.iMe.storage.R$string.currency_short_punkpanda
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_punkpanda_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.PPM.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class SIN extends Ethereum {
                public static final SIN INSTANCE = new SIN();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private SIN() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.SIN
                        int r2 = com.iMe.storage.R$drawable.fork_ic_sin_logo
                        int r4 = com.iMe.storage.R$string.currency_sinverse
                        int r5 = com.iMe.storage.R$string.currency_short_sinverse
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_sinverse_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.SIN.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class TRX extends Ethereum {
                public static final TRX INSTANCE = new TRX();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private TRX() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.TRX
                        int r2 = com.iMe.storage.R$drawable.fork_ic_tron_logo
                        int r4 = com.iMe.storage.R$string.currency_tron
                        int r5 = com.iMe.storage.R$string.currency_short_tron
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.MWEI
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_tron_site
                        r3 = 0
                        r6 = 0
                        r7 = 6
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.TRX.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* loaded from: classes3.dex */
            public static final class TUSD extends Ethereum {
                public static final TUSD INSTANCE = new TUSD();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private TUSD() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.TUSD
                        int r2 = com.iMe.storage.R$drawable.fork_ic_tusd_logo
                        int r4 = com.iMe.storage.R$string.currency_trueusd
                        int r5 = com.iMe.storage.R$string.currency_short_trueusd
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_trueusd_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.TUSD.<init>():void");
                }
            }

            /* compiled from: TokenInfo.kt */
            /* renamed from: com.iMe.storage.domain.model.wallet.token.TokenInfo$Crypto$Ethereum$HT */
            /* loaded from: classes3.dex */
            public static final class C1909HT extends Ethereum {
                public static final C1909HT INSTANCE = new C1909HT();

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private C1909HT() {
                    /*
                        r14 = this;
                        com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.HT
                        int r2 = com.iMe.storage.R$drawable.fork_ic_ht_logo
                        int r4 = com.iMe.storage.R$string.currency_huobitoken
                        int r5 = com.iMe.storage.R$string.currency_short_huobitoken
                        com.iMe.storage.domain.utils.crypto.Convert$Unit r11 = com.iMe.storage.domain.utils.crypto.Convert.Unit.ETHER
                        int r9 = r1.ordinal()
                        int r10 = com.iMe.storage.R$string.currency_huobitoken_site
                        r3 = 0
                        r6 = 0
                        r7 = 8
                        r8 = 10
                        r12 = 32
                        r13 = 0
                        r0 = r14
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum.C1909HT.<init>():void");
                }
            }
        }
    }

    /* compiled from: TokenInfo.kt */
    /* loaded from: classes3.dex */
    public static class Fiat extends TokenInfo {
        private final TokenCode code;
        private final int decimals;
        private final int fullName;
        private final int logo;
        private final int maxInputDigits;
        private final int shortName;
        private final int site;
        private final int smallWhiteIcon;
        private final int sortPosition;
        private final TokenType tokenType;

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public TokenCode getCode() {
            return this.code;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getLogo() {
            return this.logo;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getSmallWhiteIcon() {
            return this.smallWhiteIcon;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getFullName() {
            return this.fullName;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getShortName() {
            return this.shortName;
        }

        public /* synthetic */ Fiat(TokenCode tokenCode, int i, int i2, int i3, int i4, TokenType tokenType, int i5, int i6, int i7, int i8, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(tokenCode, i, i2, i3, i4, (i9 & 32) != 0 ? TokenType.FIAT : tokenType, i5, i6, i7, i8);
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public TokenType getTokenType() {
            return this.tokenType;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getDecimals() {
            return this.decimals;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getMaxInputDigits() {
            return this.maxInputDigits;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getSortPosition() {
            return this.sortPosition;
        }

        @Override // com.iMe.storage.domain.model.wallet.token.TokenInfo
        public int getSite() {
            return this.site;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Fiat(TokenCode code, int i, int i2, int i3, int i4, TokenType tokenType, int i5, int i6, int i7, int i8) {
            super(code, i, i2, i3, i4, tokenType, i5, i6, i7, i8, null);
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(tokenType, "tokenType");
            this.code = code;
            this.logo = i;
            this.smallWhiteIcon = i2;
            this.fullName = i3;
            this.shortName = i4;
            this.tokenType = tokenType;
            this.decimals = i5;
            this.maxInputDigits = i6;
            this.sortPosition = i7;
            this.site = i8;
        }

        /* compiled from: TokenInfo.kt */
        /* loaded from: classes3.dex */
        public static final class USD extends Fiat {
            public static final USD INSTANCE = new USD();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private USD() {
                /*
                    r13 = this;
                    com.iMe.storage.domain.model.wallet.token.TokenCode r1 = com.iMe.storage.domain.model.wallet.token.TokenCode.USD
                    int r4 = com.iMe.storage.R$string.currency_dollar
                    int r5 = com.iMe.storage.R$string.currency_short_dollar
                    int r9 = r1.ordinal()
                    r2 = 0
                    r3 = 0
                    r6 = 0
                    r7 = 2
                    r8 = 8
                    r10 = -1
                    r11 = 32
                    r12 = 0
                    r0 = r13
                    r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.token.TokenInfo.Fiat.USD.<init>():void");
            }

            public final int getDollarsDecimals(double d) {
                if (d < 1.0d) {
                    return 6;
                }
                if (d < 10.0d) {
                    return 4;
                }
                return getDecimals();
            }
        }
    }

    public final boolean isLime() {
        return this instanceof Crypto.Ethereum.LIME;
    }

    public final boolean isUnknown() {
        return this instanceof Basic.UNKNOWN;
    }

    public final boolean isEth() {
        return this instanceof Crypto.Ethereum.ETH;
    }

    /* compiled from: TokenInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final List<TokenInfo> getSupportedTokens() {
            return (List) TokenInfo.supportedTokens$delegate.getValue();
        }

        public final TokenInfo map(String code) {
            Object obj;
            Intrinsics.checkNotNullParameter(code, "code");
            Iterator<T> it = getSupportedTokens().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((TokenInfo) obj).getCode().name(), code)) {
                    break;
                }
            }
            TokenInfo tokenInfo = (TokenInfo) obj;
            return tokenInfo == null ? Basic.UNKNOWN.INSTANCE : tokenInfo;
        }

        public final TokenInfo map(TokenCode code) {
            Object obj;
            boolean z;
            Intrinsics.checkNotNullParameter(code, "code");
            Iterator<T> it = getSupportedTokens().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((TokenInfo) obj).getCode() == code) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    break;
                }
            }
            TokenInfo tokenInfo = (TokenInfo) obj;
            return tokenInfo == null ? Basic.UNKNOWN.INSTANCE : tokenInfo;
        }
    }

    static {
        Lazy<List<TokenInfo>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(TokenInfo$Companion$supportedTokens$2.INSTANCE);
        supportedTokens$delegate = lazy;
    }
}
