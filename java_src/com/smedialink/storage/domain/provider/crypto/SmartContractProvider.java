package com.smedialink.storage.domain.provider.crypto;

import com.smedialink.storage.data.manager.common.EnvironmentManager;
import com.smedialink.storage.domain.model.common.Environment;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SmartContractProvider.kt */
/* loaded from: classes3.dex */
public final class SmartContractProvider {
    public static final SmartContractProvider INSTANCE = new SmartContractProvider();
    private static final HashMap<TokenCode, String> mainnetBEP20Contracts;
    private static final HashMap<TokenCode, String> mainnetERC20Contracts;
    private static final HashMap<TokenCode, String> mainnetPolygonContracts;
    private static final HashMap<TokenCode, String> mumbaiPolygonContracts;
    private static final HashMap<TokenCode, String> ropstenBEP20Contracts;
    private static final HashMap<TokenCode, String> ropstenERC20Contracts;

    /* compiled from: SmartContractProvider.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.BINANCE_SMART_CHAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.ETHEREUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkType.POLYGON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private SmartContractProvider() {
    }

    static {
        HashMap<TokenCode, String> hashMapOf;
        HashMap<TokenCode, String> hashMapOf2;
        HashMap<TokenCode, String> hashMapOf3;
        HashMap<TokenCode, String> hashMapOf4;
        HashMap<TokenCode, String> hashMapOf5;
        HashMap<TokenCode, String> hashMapOf6;
        TokenCode tokenCode = TokenCode.FIL;
        TokenCode tokenCode2 = TokenCode.ETHER;
        TokenCode tokenCode3 = TokenCode.USDT;
        TokenCode tokenCode4 = TokenCode.LIME;
        TokenCode tokenCode5 = TokenCode.LANC;
        TokenCode tokenCode6 = TokenCode.LINK;
        TokenCode tokenCode7 = TokenCode.UFI;
        TokenCode tokenCode8 = TokenCode.PCNT;
        TokenCode tokenCode9 = TokenCode.BUSD;
        TokenCode tokenCode10 = TokenCode.DEGO;
        TokenCode tokenCode11 = TokenCode.EQX;
        TokenCode tokenCode12 = TokenCode.FLURRY;
        TokenCode tokenCode13 = TokenCode.GFX;
        TokenCode tokenCode14 = TokenCode.CTSI;
        TokenCode tokenCode15 = TokenCode.CEEK;
        TokenCode tokenCode16 = TokenCode.SKILL;
        TokenCode tokenCode17 = TokenCode.XEND;
        TokenCode tokenCode18 = TokenCode.YAY;
        TokenCode tokenCode19 = TokenCode.KABY;
        TokenCode tokenCode20 = TokenCode.KFT;
        TokenCode tokenCode21 = TokenCode.OM;
        TokenCode tokenCode22 = TokenCode.USDO;
        TokenCode tokenCode23 = TokenCode.FUSE;
        TokenCode tokenCode24 = TokenCode.TON;
        TokenCode tokenCode25 = TokenCode.INF;
        TokenCode tokenCode26 = TokenCode.PPM;
        TokenCode tokenCode27 = TokenCode.SIN;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(tokenCode, "0x0D8Ce2A99Bb6e3B7Db580eD848240e4a0F9aE153"), TuplesKt.m100to(tokenCode2, "0x2170Ed0880ac9A755fd29B2688956BD959F933F8"), TuplesKt.m100to(tokenCode3, "0x55d398326f99059fF775485246999027B3197955"), TuplesKt.m100to(tokenCode4, "0x7bC75e291E656E8658D66Be1cc8154A3769A35Dd"), TuplesKt.m100to(tokenCode5, "0xDd848E0CbFD3771dC7845B10072d973C375271e2"), TuplesKt.m100to(tokenCode6, "0xF8A0BF9cF54Bb92F17374d9e9A321E6a111a51bD"), TuplesKt.m100to(tokenCode7, "0xe2a59D5E33c6540E18aAA46BF98917aC3158Db0D"), TuplesKt.m100to(tokenCode8, "0xe9b9c1c38Dab5EAB3B7E2AD295425e89bD8db066"), TuplesKt.m100to(tokenCode9, "0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56"), TuplesKt.m100to(tokenCode10, "0x3FdA9383A84C05eC8f7630Fe10AdF1fAC13241CC"), TuplesKt.m100to(tokenCode11, "0x436C52A8ceE41D5e9c5E6f4Cb146e66D552Fb700"), TuplesKt.m100to(tokenCode12, "0x47c9BcEf4fE2dBcdf3Abf508f147f1bBE8d4fEf2"), TuplesKt.m100to(tokenCode13, "0x65ad6A2288b2Dd23E466226397c8F5D1794e58fC"), TuplesKt.m100to(tokenCode14, "0x8dA443F84fEA710266C8eB6bC34B71702d033EF2"), TuplesKt.m100to(tokenCode15, "0xe0F94Ac5462997D2BC57287Ac3a3aE4C31345D66"), TuplesKt.m100to(tokenCode16, "0x154A9F9cbd3449AD22FDaE23044319D6eF2a1Fab"), TuplesKt.m100to(tokenCode17, "0x4a080377f83D669D7bB83B3184a8A5E61B500608"), TuplesKt.m100to(tokenCode18, "0x524dF384BFFB18C0C8f3f43d012011F8F9795579"), TuplesKt.m100to(tokenCode19, "0x02A40C048eE2607B5f5606e445CFc3633Fb20b58"), TuplesKt.m100to(tokenCode20, "0x1b41a1BA7722E6431b1A782327DBe466Fe1Ee9F9"), TuplesKt.m100to(tokenCode21, "0xF78D2e7936F5Fe18308A3B2951A93b6c4a41F5e2"), TuplesKt.m100to(tokenCode22, "0x5801D0e1C7D977D78E4890880B8E579eb4943276"), TuplesKt.m100to(tokenCode23, "0x5857c96DaE9cF8511B08Cb07f85753C472D36Ea3"), TuplesKt.m100to(tokenCode24, "0x76A797A59Ba2C17726896976B7B3747BfD1d220f"), TuplesKt.m100to(tokenCode25, "0x000000ef379eE7F4C051f4B9aF901A9219d9ec5C"), TuplesKt.m100to(tokenCode26, "0xEE246AA7e2ecF136466c6FE4808f395861C6a04e"), TuplesKt.m100to(tokenCode27, "0x6397de0f9aedc0f7a8fa8b438dde883b9c201010"));
        mainnetBEP20Contracts = hashMapOf;
        TokenCode tokenCode28 = TokenCode.UFT;
        TokenCode tokenCode29 = TokenCode.BCUG;
        TokenCode tokenCode30 = TokenCode.WBTC;
        TokenCode tokenCode31 = TokenCode.PRQ;
        TokenCode tokenCode32 = TokenCode.TRU;
        TokenCode tokenCode33 = TokenCode.DHV;
        TokenCode tokenCode34 = TokenCode.OKB;
        TokenCode tokenCode35 = TokenCode.SIG;
        TokenCode tokenCode36 = TokenCode.MATIC;
        TokenCode tokenCode37 = TokenCode.ATD;
        TokenCode tokenCode38 = TokenCode.BNB;
        TokenCode tokenCode39 = TokenCode.HAPI;
        TokenCode tokenCode40 = TokenCode.GT;
        TokenCode tokenCode41 = TokenCode.OLCF;
        TokenCode tokenCode42 = TokenCode.TARA;
        TokenCode tokenCode43 = TokenCode.LIT;
        TokenCode tokenCode44 = TokenCode.PRE;
        TokenCode tokenCode45 = TokenCode.LSS;
        TokenCode tokenCode46 = TokenCode.GAINS;
        TokenCode tokenCode47 = TokenCode.UNN;
        TokenCode tokenCode48 = TokenCode.DEXT;
        TokenCode tokenCode49 = TokenCode.TOMOE;
        TokenCode tokenCode50 = TokenCode.FRM;
        TokenCode tokenCode51 = TokenCode.DOP;
        TokenCode tokenCode52 = TokenCode.D11;
        TokenCode tokenCode53 = TokenCode.DVD;
        TokenCode tokenCode54 = TokenCode.METIS;
        TokenCode tokenCode55 = TokenCode.SAITO;
        TokenCode tokenCode56 = TokenCode.ZCX;
        TokenCode tokenCode57 = TokenCode.SHR;
        TokenCode tokenCode58 = TokenCode.BOSON;
        TokenCode tokenCode59 = TokenCode.KONO;
        TokenCode tokenCode60 = TokenCode.ROYA;
        TokenCode tokenCode61 = TokenCode.CVR;
        TokenCode tokenCode62 = TokenCode.SHIB;
        hashMapOf2 = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(tokenCode28, "0x0202Be363B8a4820f3F4DE7FaF5224fF05943AB1"), TuplesKt.m100to(tokenCode29, "0x14Da7b27b2E0FedEfe0a664118b0c9bc68e2E9AF"), TuplesKt.m100to(tokenCode30, "0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599"), TuplesKt.m100to(tokenCode31, "0x362bc847A3a9637d3af6624EeC853618a43ed7D2"), TuplesKt.m100to(tokenCode32, "0x4C19596f5aAfF459fA38B0f7eD92F11AE6543784"), TuplesKt.m100to(tokenCode9, "0x4Fabb145d64652a948d72533023f6E7A623C7C53"), TuplesKt.m100to(tokenCode6, "0x514910771AF9Ca656af840dff83E8264EcF986CA"), TuplesKt.m100to(tokenCode33, "0x62Dc4817588d53a056cBbD18231d91ffCcd34b2A"), TuplesKt.m100to(tokenCode8, "0x657B83A0336561C8f64389a6f5aDE675C04b0C3b"), TuplesKt.m100to(tokenCode34, "0x75231F58b43240C9718Dd58B4967c5114342a86c"), TuplesKt.m100to(tokenCode35, "0x7777777777697cFEECF846A76326dA79CC606517"), TuplesKt.m100to(tokenCode36, "0x7D1AfA7B718fb893dB30A3aBc0Cfc608AaCfeBB0"), TuplesKt.m100to(tokenCode37, "0x8052327F1BAF94A9DC8B26b9100f211eE3774f54"), TuplesKt.m100to(tokenCode4, "0x9D0B65a76274645B29e4cc41B8f23081fA09f4A3"), TuplesKt.m100to(tokenCode38, "0xB8c77482e45F1F44dE1745F52C74426C631bDD52"), TuplesKt.m100to(tokenCode39, "0xD9c2D319Cd7e6177336b0a9c93c21cb48d84Fb54"), TuplesKt.m100to(tokenCode40, "0xE66747a101bFF2dBA3697199DCcE5b743b454759"), TuplesKt.m100to(tokenCode41, "0xEEaa34aF95b034BaDa4baF565063132C765b1fA5"), TuplesKt.m100to(tokenCode42, "0xF001937650bb4f62b57521824B2c20f5b91bEa05"), TuplesKt.m100to(tokenCode43, "0xb59490aB09A0f526Cc7305822aC65f2Ab12f9723"), TuplesKt.m100to(tokenCode7, "0xcDa4e840411C00a614aD9205CAEC807c7458a0E3"), TuplesKt.m100to(tokenCode3, "0xdAC17F958D2ee523a2206206994597C13D831ec7"), TuplesKt.m100to(tokenCode10, "0x88EF27e69108B2633F8E1C184CC37940A075cC02"), TuplesKt.m100to(tokenCode44, "0xEC213F83defB583af3A000B1c0ada660b1902A0F"), TuplesKt.m100to(tokenCode11, "0xBd3de9a069648c84d27d74d701C9fa3253098B15"), TuplesKt.m100to(tokenCode45, "0x3B9BE07d622aCcAEd78f479BC0EDabFd6397E320"), TuplesKt.m100to(tokenCode46, "0xd9b312D77Bc7BEd9B9CecB56636300bED4Fe5Ce9"), TuplesKt.m100to(tokenCode47, "0x226f7b842E0F0120b7E194D05432b3fd14773a9D"), TuplesKt.m100to(tokenCode48, "0xfB7B4564402E5500dB5bB6d63Ae671302777C75a"), TuplesKt.m100to(tokenCode49, "0x05D3606d5c81EB9b7B18530995eC9B29da05FaBa"), TuplesKt.m100to(tokenCode12, "0x60F63B76E2Fc1649E57a3489162732A90ACf59FE"), TuplesKt.m100to(tokenCode50, "0xE5CAeF4Af8780E59Df925470b050Fb23C43CA68C"), TuplesKt.m100to(tokenCode51, "0x6bB61215298F296C55b19Ad842D3Df69021DA2ef"), TuplesKt.m100to(tokenCode13, "0x65ad6A2288b2Dd23E466226397c8F5D1794e58fC"), TuplesKt.m100to(tokenCode52, "0x9bf02cF6B0435A0523E6f6e0D2f35A920144F5FA"), TuplesKt.m100to(tokenCode53, "0x77dcE26c03a9B833fc2D7C31C22Da4f42e9d9582"), TuplesKt.m100to(tokenCode54, "0x9E32b13ce7f2E80A01932B42553652E053D6ed8e"), TuplesKt.m100to(tokenCode14, "0x491604c0FDF08347Dd1fa4Ee062a822A5DD06B5D"), TuplesKt.m100to(tokenCode55, "0xFa14Fa6958401314851A17d6C5360cA29f74B57B"), TuplesKt.m100to(tokenCode56, "0xC52C326331E9Ce41F04484d3B5E5648158028804"), TuplesKt.m100to(tokenCode15, "0xb056c38f6b7Dc4064367403E26424CD2c60655e1"), TuplesKt.m100to(tokenCode17, "0xE4CFE9eAa8Cdb0942A80B7bC68fD8Ab0F6D44903"), TuplesKt.m100to(tokenCode57, "0xd98F75b1A3261dab9eEd4956c93F33749027a964"), TuplesKt.m100to(tokenCode58, "0xC477D038d5420C6A9e0b031712f61c5120090de9"), TuplesKt.m100to(tokenCode59, "0x850aAB69f0e0171A9a49dB8BE3E71351c8247Df4"), TuplesKt.m100to(tokenCode20, "0xEF53462838000184F35f7D991452e5f25110b207"), TuplesKt.m100to(tokenCode21, "0x3593D125a4f7849a1B059E64F4517A86Dd60c95d"), TuplesKt.m100to(tokenCode60, "0x7eaF9C89037e4814DC0d9952Ac7F888C784548DB"), TuplesKt.m100to(tokenCode61, "0x3C03b4EC9477809072FF9CC9292C9B25d4A8e6c6"), TuplesKt.m100to(tokenCode23, "0x970B9bB2C0444F5E81e9d0eFb84C8ccdcdcAf84d"), TuplesKt.m100to(tokenCode24, "0x582d872A1B094FC48F5DE31D3B73F2D9bE47def1"), TuplesKt.m100to(tokenCode62, "0x95aD61b0a150d79219dCF64E1E6Cc01f0B64C4cE"));
        mainnetERC20Contracts = hashMapOf2;
        TokenCode tokenCode63 = TokenCode.USDC;
        TokenCode tokenCode64 = TokenCode.SAND;
        TokenCode tokenCode65 = TokenCode.DAI;
        TokenCode tokenCode66 = TokenCode.QUICK;
        TokenCode tokenCode67 = TokenCode.AAVE;
        TokenCode tokenCode68 = TokenCode.GNS;
        TokenCode tokenCode69 = TokenCode.MANA;
        TokenCode tokenCode70 = TokenCode.GHST;
        TokenCode tokenCode71 = TokenCode.UNI;
        TokenCode tokenCode72 = TokenCode.KOM;
        hashMapOf3 = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(tokenCode3, "0xc2132D05D31c914a87C6611C10748AEb04B58e8F"), TuplesKt.m100to(tokenCode63, "0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174"), TuplesKt.m100to(tokenCode30, "0x1BFD67037B42Cf73acF2047067bd4F2C47D9BfD6"), TuplesKt.m100to(tokenCode64, "0xBbba073C31bF03b8ACf7c28EF0738DeCF3695683"), TuplesKt.m100to(tokenCode65, "0x8f3Cf7ad23Cd3CaDbD9735AFf958023239c6A063"), TuplesKt.m100to(tokenCode66, "0x831753DD7087CaC61aB5644b308642cc1c33Dc13"), TuplesKt.m100to(tokenCode67, "0xD6DF932A45C0f255f85145f286eA0b292B21C90B"), TuplesKt.m100to(tokenCode68, "0xE5417Af564e4bFDA1c483642db72007871397896"), TuplesKt.m100to(tokenCode69, "0xA1c57f48F0Deb89f569dFbE6E2B7f46D33606fD4"), TuplesKt.m100to(tokenCode6, "0x53E0bca35eC356BD5ddDFebbD1Fc0fD03FaBad39"), TuplesKt.m100to(tokenCode70, "0x385Eeac5cB85A38A9a07A70c73e0a3271CfB54A7"), TuplesKt.m100to(tokenCode71, "0xb33EaAd8d922B1083446DC23f610c2567fB5180f"), TuplesKt.m100to(tokenCode4, "0x7f67639ffc8c93dd558d452b8920b28815638c44"), TuplesKt.m100to(tokenCode25, "0x000000ef379eE7F4C051f4B9aF901A9219d9ec5C"), TuplesKt.m100to(tokenCode72, "0xC004e2318722EA2b15499D6375905d75Ee5390B8"));
        mainnetPolygonContracts = hashMapOf3;
        hashMapOf4 = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(tokenCode, "0x9f13dD5B7Ecf6504D74A136532061c6BB513EC66"), TuplesKt.m100to(tokenCode2, "0xd66c6B4F0be8CE5b39D52E0Fd1344c389929B378"), TuplesKt.m100to(tokenCode3, "0x7964ae80601C555d3797429f57a41C0E255Fd2bd"), TuplesKt.m100to(tokenCode4, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"), TuplesKt.m100to(tokenCode5, "0x2C2d1C3CaAe8DCF2559f4b0665860caBC1beCB06"), TuplesKt.m100to(tokenCode6, "0xd992CdEA5B16EaF7681fe85b4d537Efb64a1B0F1"), TuplesKt.m100to(tokenCode7, "0x46b2fe826bCB0Bc6A61fc663DFEBf6bEc79F6e1E"), TuplesKt.m100to(tokenCode8, "0xBF3fc87e4Be58b1784f79207Ee51442EDd9D452c"), TuplesKt.m100to(tokenCode9, "0xeD24FC36d5Ee211Ea25A80239Fb8C4Cfd80f12Ee"), TuplesKt.m100to(tokenCode10, "0x0c90037E98c1A7b699e2063Cc224e782D3c0dCd5"), TuplesKt.m100to(tokenCode11, "0x24250B993264c08f2BAC75b0bBDF305FF516B225"), TuplesKt.m100to(tokenCode12, "0xe85d1a496ce30c3B456Bf4a21C1FfFb7fa4591Fd"), TuplesKt.m100to(tokenCode13, "0x9A6593E4A7E76CdF69D6128990906a40bed9f0Ea"), TuplesKt.m100to(tokenCode14, "0x2254a90a68F47bc4271689fb0C233BEEF5039FFD"), TuplesKt.m100to(tokenCode15, "0xfbe6aA7Ed7AC67465D5636C8a57D9Edd4ed417E1"), TuplesKt.m100to(tokenCode16, "0xe83710cA62BE24883dADe5Ae73Eb6A6047c0a65F"), TuplesKt.m100to(tokenCode17, "0x539791A2F6aAD604a0192063E068BF075eE1FC0a"), TuplesKt.m100to(tokenCode18, "0xA01D18AF85e6ba90a97901C1835A3261d166F255"), TuplesKt.m100to(tokenCode19, "0xbeb4b62C35647A1E2EEB79A46F37C7FAC1c5B864"), TuplesKt.m100to(tokenCode20, "0xfE6bcdde5b97F10fB9f06e258Fc2796E72E11497"), TuplesKt.m100to(tokenCode21, "0x6dC5C29D6dA8e9DdE5256F6cF179FC28dAaE0E7a"), TuplesKt.m100to(tokenCode22, "0xFC78Af94ee9D6bf18E3D14D8641208066De42E45"), TuplesKt.m100to(tokenCode23, "0xEe8a8Aea642B6ad9F81F785DC0ad4DbE08b7B830"), TuplesKt.m100to(tokenCode24, "0x89f702b31Cad3BE1e1A83B2Cb349A93edd692eA0"), TuplesKt.m100to(tokenCode25, "0x41032B20201862CF693531942Ff57204dff6637e"), TuplesKt.m100to(tokenCode26, "0x3Bf41252CB9cBC4678F14ecae502B17cdC5aC746"), TuplesKt.m100to(tokenCode27, "0x8B4e283D6f626E20ff1cf5612FB5914aA515c7f8"));
        ropstenBEP20Contracts = hashMapOf4;
        hashMapOf5 = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(tokenCode28, "0x343b4049C7adE11DA2890114258C68a12E1a40A3"), TuplesKt.m100to(tokenCode29, "0xE92ED5c5CF07dbA509cDCfa56537809dF65d8d79"), TuplesKt.m100to(tokenCode30, "0xd992CdEA5B16EaF7681fe85b4d537Efb64a1B0F1"), TuplesKt.m100to(tokenCode31, "0x2ab22d5ba4D727bFe28fB648397382d6Ad6998A9"), TuplesKt.m100to(tokenCode32, "0x58b99f3E0d3eD5bA235Ab98BFAC8ef22029B7A18"), TuplesKt.m100to(tokenCode9, "0x32b2886d66789D7401192Bd50c98Ed2A659D95eF"), TuplesKt.m100to(tokenCode6, "0x7af4472903133e4dE802d4b96f95C32c95476FE5"), TuplesKt.m100to(tokenCode33, "0xF68cC9E8B07F0A8EC676531d7ED40547d9c978e9"), TuplesKt.m100to(tokenCode8, "0x20475fb3bC62eF6F1B8E78B9E3CA98428654Fa2D"), TuplesKt.m100to(tokenCode34, "0x236ad1e443E466663DEc849Fc76eBE1FD732cEF9"), TuplesKt.m100to(tokenCode35, "0x96bd2dE90dED4dc0eAE22f32CAaD84DCd17556D7"), TuplesKt.m100to(tokenCode36, "0x9f13dD5B7Ecf6504D74A136532061c6BB513EC66"), TuplesKt.m100to(tokenCode37, "0xEf3551cc33ffe7cF52707fe6F92BbbF968d96eDe"), TuplesKt.m100to(tokenCode4, "0x98B3C321F619d8D87c54a46b7ce9495E43d6F7Ef"), TuplesKt.m100to(tokenCode38, "0x8393f01e813392A536271982D5b410E61f7Ea730"), TuplesKt.m100to(tokenCode39, "0x4025490C89E8Ec784818c9D9eD9c47f4dd64D763"), TuplesKt.m100to(tokenCode40, "0xBF3fc87e4Be58b1784f79207Ee51442EDd9D452c"), TuplesKt.m100to(tokenCode41, "0x7f67639Ffc8C93dD558d452b8920b28815638c44"), TuplesKt.m100to(tokenCode42, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"), TuplesKt.m100to(tokenCode43, "0x2C2d1C3CaAe8DCF2559f4b0665860caBC1beCB06"), TuplesKt.m100to(tokenCode7, "0x6904b6d54252Dc73caA4DdA865bc13E55D09Aba0"), TuplesKt.m100to(tokenCode3, "0xF62E58827567F32972EC0cb35f4a450b7B3a2E45"), TuplesKt.m100to(tokenCode10, "0x17C447e5e51e2b068c9D53FCfA906b4aBFfd82C2"), TuplesKt.m100to(tokenCode44, "0xA8d9E43c6a12c47aed96c3564Ec6c22E2bAfd5b9"), TuplesKt.m100to(tokenCode11, "0xC8Ce83FfbBB10272C17215b17cAA046292791815"), TuplesKt.m100to(tokenCode45, "0x00f8eD2A3D17f59674f1FC536D40880FA943a915"), TuplesKt.m100to(tokenCode46, "0xd0c9Fb2121938BFfbf84A88BCCb109970EF17228"), TuplesKt.m100to(tokenCode47, "0x84DEAA17658EA056b7d1Db8Aceae0DE324772c39"), TuplesKt.m100to(tokenCode48, "0xF82f2e1F93bd42907EB614079d2a78ee9D9e9c69"), TuplesKt.m100to(tokenCode49, "0x0a2A001A82270d51B7E534004f56733e63BcAeB5"), TuplesKt.m100to(tokenCode12, "0x1c8C62bDfbe462Deba49c0BA6399A81fD3Eb9E3f"), TuplesKt.m100to(tokenCode50, "0x568d1F9E5ab394741dC1Eb0d9517453A64Cf1C8a"), TuplesKt.m100to(tokenCode51, "0x2322d46a28D74556Fb28Bec2fFf45dD6563a9921"), TuplesKt.m100to(tokenCode13, "0xDCaf07c1136abf78D4d95bc6727Ab0256349e23F"), TuplesKt.m100to(tokenCode52, "0xae6E4D6D088987841Fe6D8891bB24E143712E297"), TuplesKt.m100to(tokenCode53, "0x177D893C713B8B2a680a56a38C0447b529f85054"), TuplesKt.m100to(tokenCode54, "0xD0750A59DB3C5E36466a30c807e3EcE008978b4b"), TuplesKt.m100to(tokenCode14, "0xe55fec0508AeE7a660a72b90A17bE98e236b83d8"), TuplesKt.m100to(tokenCode55, "0xba7684EB0Dbc143a2431C033d52f1797eC9e6E73"), TuplesKt.m100to(tokenCode56, "0x773d49D6F90ace1e1D23a678dD87f718cc1A1970"), TuplesKt.m100to(tokenCode15, "0x673E0708fD2bB14F09921eAE825cc80689D5D544"), TuplesKt.m100to(tokenCode17, "0xdE3E0Deaf721cc8e3a4049A596f993739c5870cF"), TuplesKt.m100to(tokenCode57, "0xA19E01459bC2BcE96aAEe42C2425394135D68A3b"), TuplesKt.m100to(tokenCode58, "0x102eF9cFACF5CcB3947A1863E79b52d1b61F417F"), TuplesKt.m100to(tokenCode59, "0x0fA71eB6487c54903d9E3d8A0F3bC13460DDBDfE"), TuplesKt.m100to(tokenCode20, "0x3181D3e02C5DaD8101470BD7E03eC3e08d79E678"), TuplesKt.m100to(tokenCode21, "0x31903d5891d2Accb50B4de05A318D354DFCa74b7"), TuplesKt.m100to(tokenCode60, "0x04cfbe588C3Faa3e8C5A2499582a14C9b2CCEc31"), TuplesKt.m100to(tokenCode61, "0xE76AFaA6AB2B7A491E49E585C8F1e490640e259d"), TuplesKt.m100to(tokenCode23, "0xD59D27021E938E5e45226e18317c3fFFbbC7b896"), TuplesKt.m100to(tokenCode24, "0x712d4957BA8bC52572Bc0301B6e0a40d89279Db6"), TuplesKt.m100to(tokenCode62, "0x0154E2CE89d9a0348b4451B901Bc207f4B72267E"));
        ropstenERC20Contracts = hashMapOf5;
        hashMapOf6 = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(tokenCode3, "0x96bd2dE90dED4dc0eAE22f32CAaD84DCd17556D7"), TuplesKt.m100to(tokenCode63, "0xFB6e4aD97a0edf551d293e4a4569D303D00d71F3"), TuplesKt.m100to(tokenCode30, "0x236ad1e443E466663DEc849Fc76eBE1FD732cEF9"), TuplesKt.m100to(tokenCode64, "0xBF3fc87e4Be58b1784f79207Ee51442EDd9D452c"), TuplesKt.m100to(tokenCode65, "0x2C2d1C3CaAe8DCF2559f4b0665860caBC1beCB06"), TuplesKt.m100to(tokenCode66, "0x2ab22d5ba4D727bFe28fB648397382d6Ad6998A9"), TuplesKt.m100to(tokenCode67, "0x343b4049C7adE11DA2890114258C68a12E1a40A3"), TuplesKt.m100to(tokenCode68, "0x58b99f3E0d3eD5bA235Ab98BFAC8ef22029B7A18"), TuplesKt.m100to(tokenCode69, "0x4025490C89E8Ec784818c9D9eD9c47f4dd64D763"), TuplesKt.m100to(tokenCode6, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"), TuplesKt.m100to(tokenCode70, "0xE92ED5c5CF07dbA509cDCfa56537809dF65d8d79"), TuplesKt.m100to(tokenCode71, "0x20475fb3bC62eF6F1B8E78B9E3CA98428654Fa2D"), TuplesKt.m100to(tokenCode4, "0xf7909CBC21E95000E3d0e14004aADdea2bb1796d"), TuplesKt.m100to(tokenCode25, "0xE22219FE81cca8Ce0bda1B59Edd6F8d0f7ce9c41"), TuplesKt.m100to(tokenCode72, "0x3EF1a2E073c4999930f212Cf13DB1391Eb4E7F47"));
        mumbaiPolygonContracts = hashMapOf6;
    }

    public final String getContract(TokenCode token, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Environment environment = EnvironmentManager.INSTANCE.getEnvironment();
        boolean z = environment.isDevelopment() || environment.isStage();
        int i = WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()];
        if (i == 1) {
            return (z ? ropstenBEP20Contracts : mainnetBEP20Contracts).get(token);
        } else if (i == 2) {
            return (z ? ropstenERC20Contracts : mainnetERC20Contracts).get(token);
        } else if (i != 3) {
            return null;
        } else {
            return (z ? mumbaiPolygonContracts : mainnetPolygonContracts).get(token);
        }
    }
}
