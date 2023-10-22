package org.telegram.p042ui.Components;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p042ui.ActionBar.BottomSheet;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$TL_messageEntityCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_messageEntityMention;
import org.telegram.tgnet.TLRPC$TL_messageEntityTextUrl;
import org.telegram.tgnet.TLRPC$TL_messageEntityUrl;
import org.telegram.tgnet.TLRPC$TL_textWithEntities;
/* renamed from: org.telegram.ui.Components.TranslateAlert2 */
/* loaded from: classes6.dex */
public class TranslateAlert2 extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private static HashMap<String, Locale> localesByCode;

    public static TLRPC$TL_textWithEntities preprocess(TLRPC$TL_textWithEntities tLRPC$TL_textWithEntities, TLRPC$TL_textWithEntities tLRPC$TL_textWithEntities2) {
        Emoji.EmojiSpanRange emojiSpanRange;
        boolean z;
        if (tLRPC$TL_textWithEntities2 == null || tLRPC$TL_textWithEntities2.text == null) {
            return null;
        }
        for (int i = 0; i < tLRPC$TL_textWithEntities2.entities.size(); i++) {
            TLRPC$MessageEntity tLRPC$MessageEntity = tLRPC$TL_textWithEntities2.entities.get(i);
            if ((tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityTextUrl) && tLRPC$MessageEntity.url != null) {
                String str = tLRPC$TL_textWithEntities2.text;
                int i2 = tLRPC$MessageEntity.offset;
                String substring = str.substring(i2, tLRPC$MessageEntity.length + i2);
                if (TextUtils.equals(substring, tLRPC$MessageEntity.url)) {
                    TLRPC$TL_messageEntityUrl tLRPC$TL_messageEntityUrl = new TLRPC$TL_messageEntityUrl();
                    tLRPC$TL_messageEntityUrl.offset = tLRPC$MessageEntity.offset;
                    tLRPC$TL_messageEntityUrl.length = tLRPC$MessageEntity.length;
                    tLRPC$TL_textWithEntities2.entities.set(i, tLRPC$TL_messageEntityUrl);
                } else if (tLRPC$MessageEntity.url.startsWith("https://t.me/") && substring.startsWith("@") && TextUtils.equals(substring.substring(1), tLRPC$MessageEntity.url.substring(13))) {
                    TLRPC$TL_messageEntityMention tLRPC$TL_messageEntityMention = new TLRPC$TL_messageEntityMention();
                    tLRPC$TL_messageEntityMention.offset = tLRPC$MessageEntity.offset;
                    tLRPC$TL_messageEntityMention.length = tLRPC$MessageEntity.length;
                    tLRPC$TL_textWithEntities2.entities.set(i, tLRPC$TL_messageEntityMention);
                }
            }
        }
        if (tLRPC$TL_textWithEntities != null && tLRPC$TL_textWithEntities.text != null && !tLRPC$TL_textWithEntities.entities.isEmpty()) {
            HashMap<String, ArrayList<Emoji.EmojiSpanRange>> groupEmojiRanges = groupEmojiRanges(tLRPC$TL_textWithEntities.text);
            HashMap<String, ArrayList<Emoji.EmojiSpanRange>> groupEmojiRanges2 = groupEmojiRanges(tLRPC$TL_textWithEntities2.text);
            for (int i3 = 0; i3 < tLRPC$TL_textWithEntities.entities.size(); i3++) {
                TLRPC$MessageEntity tLRPC$MessageEntity2 = tLRPC$TL_textWithEntities.entities.get(i3);
                if (tLRPC$MessageEntity2 instanceof TLRPC$TL_messageEntityCustomEmoji) {
                    String str2 = tLRPC$TL_textWithEntities.text;
                    int i4 = tLRPC$MessageEntity2.offset;
                    String substring2 = str2.substring(i4, tLRPC$MessageEntity2.length + i4);
                    if (!TextUtils.isEmpty(substring2)) {
                        ArrayList<Emoji.EmojiSpanRange> arrayList = groupEmojiRanges.get(substring2);
                        ArrayList<Emoji.EmojiSpanRange> arrayList2 = groupEmojiRanges2.get(substring2);
                        if (arrayList != null && arrayList2 != null) {
                            int i5 = -1;
                            int i6 = 0;
                            while (true) {
                                if (i6 >= arrayList.size()) {
                                    break;
                                }
                                Emoji.EmojiSpanRange emojiSpanRange2 = arrayList.get(i6);
                                int i7 = emojiSpanRange2.start;
                                int i8 = tLRPC$MessageEntity2.offset;
                                if (i7 == i8 && emojiSpanRange2.end == i8 + tLRPC$MessageEntity2.length) {
                                    i5 = i6;
                                    break;
                                }
                                i6++;
                            }
                            if (i5 >= 0 && i5 < arrayList2.size() && (emojiSpanRange = arrayList2.get(i5)) != null) {
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= tLRPC$TL_textWithEntities2.entities.size()) {
                                        z = false;
                                        break;
                                    }
                                    TLRPC$MessageEntity tLRPC$MessageEntity3 = tLRPC$TL_textWithEntities2.entities.get(i9);
                                    if (tLRPC$MessageEntity3 instanceof TLRPC$TL_messageEntityCustomEmoji) {
                                        int i10 = emojiSpanRange.start;
                                        int i11 = emojiSpanRange.end;
                                        int i12 = tLRPC$MessageEntity3.offset;
                                        if (AndroidUtilities.intersect1d(i10, i11, i12, tLRPC$MessageEntity3.length + i12)) {
                                            z = true;
                                            break;
                                        }
                                    }
                                    i9++;
                                }
                                if (!z) {
                                    TLRPC$TL_messageEntityCustomEmoji tLRPC$TL_messageEntityCustomEmoji = new TLRPC$TL_messageEntityCustomEmoji();
                                    TLRPC$TL_messageEntityCustomEmoji tLRPC$TL_messageEntityCustomEmoji2 = (TLRPC$TL_messageEntityCustomEmoji) tLRPC$MessageEntity2;
                                    tLRPC$TL_messageEntityCustomEmoji.document_id = tLRPC$TL_messageEntityCustomEmoji2.document_id;
                                    tLRPC$TL_messageEntityCustomEmoji.document = tLRPC$TL_messageEntityCustomEmoji2.document;
                                    int i13 = emojiSpanRange.start;
                                    tLRPC$TL_messageEntityCustomEmoji.offset = i13;
                                    tLRPC$TL_messageEntityCustomEmoji.length = emojiSpanRange.end - i13;
                                    tLRPC$TL_textWithEntities2.entities.add(tLRPC$TL_messageEntityCustomEmoji);
                                }
                            }
                        }
                    }
                }
            }
        }
        return tLRPC$TL_textWithEntities2;
    }

    private static HashMap<String, ArrayList<Emoji.EmojiSpanRange>> groupEmojiRanges(CharSequence charSequence) {
        ArrayList<Emoji.EmojiSpanRange> parseEmojis;
        HashMap<String, ArrayList<Emoji.EmojiSpanRange>> hashMap = new HashMap<>();
        if (charSequence == null || (parseEmojis = Emoji.parseEmojis(charSequence)) == null) {
            return hashMap;
        }
        String charSequence2 = charSequence.toString();
        for (int i = 0; i < parseEmojis.size(); i++) {
            Emoji.EmojiSpanRange emojiSpanRange = parseEmojis.get(i);
            if (emojiSpanRange != null && emojiSpanRange.code != null) {
                String substring = charSequence2.substring(emojiSpanRange.start, emojiSpanRange.end);
                ArrayList<Emoji.EmojiSpanRange> arrayList = hashMap.get(substring);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    hashMap.put(substring, arrayList);
                }
                arrayList.add(emojiSpanRange);
            }
        }
        return hashMap;
    }

    public static String capitalFirst(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    public static CharSequence capitalFirst(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() <= 0) {
            return null;
        }
        SpannableStringBuilder valueOf = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : SpannableStringBuilder.valueOf(charSequence);
        valueOf.replace(0, 1, (CharSequence) valueOf.toString().substring(0, 1).toUpperCase());
        return valueOf;
    }

    public static String languageName(String str) {
        return languageName(str, null);
    }

    public static String languageName(String str, boolean[] zArr) {
        if (str == null || str.equals("und") || str.equals(TtmlNode.TEXT_EMPHASIS_AUTO)) {
            return null;
        }
        boolean z = false;
        String str2 = str.split("_")[0];
        if ("nb".equals(str2)) {
            str2 = "no";
        }
        if (zArr != null) {
            String string = LocaleController.getString("TranslateLanguage" + str2.toUpperCase());
            boolean z2 = (string == null || string.startsWith("LOC_ERR")) ? false : true;
            zArr[0] = z2;
            if (z2) {
                return string;
            }
        }
        String systemLanguageName = systemLanguageName(str);
        if (systemLanguageName == null) {
            systemLanguageName = systemLanguageName(str2);
        }
        if (systemLanguageName != null) {
            return systemLanguageName;
        }
        if ("no".equals(str)) {
            str = "nb";
        }
        LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
        LocaleController.LocaleInfo builtinLanguageByPlural = LocaleController.getInstance().getBuiltinLanguageByPlural(str);
        if (builtinLanguageByPlural == null) {
            return null;
        }
        if (currentLocaleInfo != null && "en".equals(currentLocaleInfo.pluralLangCode)) {
            z = true;
        }
        if (z) {
            return builtinLanguageByPlural.nameEnglish;
        }
        return builtinLanguageByPlural.name;
    }

    public static String systemLanguageName(String str) {
        return systemLanguageName(str, false);
    }

    public static String systemLanguageName(String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (localesByCode == null) {
            localesByCode = new HashMap<>();
            try {
                Locale[] availableLocales = Locale.getAvailableLocales();
                for (int i = 0; i < availableLocales.length; i++) {
                    localesByCode.put(availableLocales[i].getLanguage(), availableLocales[i]);
                    String country = availableLocales[i].getCountry();
                    if (country != null && country.length() > 0) {
                        HashMap<String, Locale> hashMap = localesByCode;
                        hashMap.put(availableLocales[i].getLanguage() + "-" + country.toLowerCase(), availableLocales[i]);
                    }
                }
            } catch (Exception unused) {
            }
        }
        String lowerCase = str.replace("_", "-").toLowerCase();
        try {
            Locale locale = localesByCode.get(lowerCase);
            if (locale != null) {
                String displayLanguage = locale.getDisplayLanguage(z ? locale : Locale.getDefault());
                if (lowerCase.contains("-")) {
                    String displayCountry = locale.getDisplayCountry(z ? locale : Locale.getDefault());
                    if (TextUtils.isEmpty(displayCountry)) {
                        return displayLanguage;
                    }
                    return displayLanguage + " (" + displayCountry + ")";
                }
                return displayLanguage;
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    public static String getToLanguage() {
        return MessagesController.getGlobalMainSettings().getString("translate_to_language", LocaleController.getInstance().getCurrentLocale().getLanguage());
    }

    public static void setToLanguage(String str) {
        MessagesController.getGlobalMainSettings().edit().putString("translate_to_language", str).apply();
    }
}
