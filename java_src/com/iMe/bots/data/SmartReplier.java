package com.iMe.bots.data;

import com.iMe.bots.data.mapper.ResponseMapper;
import com.iMe.bots.data.model.Response;
import com.iMe.bots.data.repository.UserAnswersRepository;
import com.iMe.bots.domain.Replier;
import com.iMe.bots.domain.model.BotLanguage;
import com.iMe.bots.domain.model.SmartBotResponse;
import com.iMe.bots.usecase.AiBotsManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
/* compiled from: SmartReplier.kt */
/* loaded from: classes4.dex */
public final class SmartReplier implements Replier, CoroutineScope {
    private final String currentYearTag;
    private final Job job;
    private final AiBotsManager manager;
    private final ResponseMapper mapper;
    private final UserAnswersRepository repository;

    /* compiled from: SmartReplier.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BotLanguage.values().length];
            try {
                iArr[BotLanguage.RU.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BotLanguage.EN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SmartReplier(AiBotsManager manager, ResponseMapper mapper, UserAnswersRepository repository) {
        CompletableJob Job$default;
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.manager = manager;
        this.mapper = mapper;
        this.repository = repository;
        Job$default = JobKt__JobKt.Job$default(null, 1, null);
        this.job = Job$default;
        String format = new SimpleDateFormat("yyyy", Locale.getDefault()).format(new Date());
        Intrinsics.checkNotNullExpressionValue(format, "SimpleDateFormat(\"yyyy\",…Default()).format(Date())");
        this.currentYearTag = format;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return Dispatchers.getMain().plus(this.job);
    }

    @Override // com.iMe.bots.domain.Replier
    public void getResponsesFromBots(String sentence, long j, AiBotsManager.SmartReplierCallback callback) {
        Intrinsics.checkNotNullParameter(sentence, "sentence");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new SmartReplier$getResponsesFromBots$1(callback, this, j, sentence, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> splitLemmas(BotLanguage botLanguage, String str) {
        Sequence asSequence;
        Sequence filter;
        Sequence map;
        List<String> list;
        Sequence asSequence2;
        Sequence filter2;
        Sequence map2;
        Sequence<String> map3;
        Sequence<Pair> zipWithNext;
        List<Character> list2;
        List<Pair> zipWithNext2;
        int i = WhenMappings.$EnumSwitchMapping$0[botLanguage.ordinal()];
        if (i == 1) {
            asSequence = CollectionsKt___CollectionsKt.asSequence(new Regex("[@#$%^&*+-/|\\_><.,?!:;)(= ]").split(str, 0));
            filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<String, Boolean>() { // from class: com.iMe.bots.data.SmartReplier$splitLemmas$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(it.length() > 0);
                }
            });
            map = SequencesKt___SequencesKt.map(filter, new Function1<String, String>() { // from class: com.iMe.bots.data.SmartReplier$splitLemmas$2
                @Override // kotlin.jvm.functions.Function1
                public final String invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    String lowerCase = it.toLowerCase();
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
                    return lowerCase;
                }
            });
            list = SequencesKt___SequencesKt.toList(map);
            return list;
        } else if (i == 2) {
            ArrayList arrayList = new ArrayList();
            asSequence2 = CollectionsKt___CollectionsKt.asSequence(new Regex("[-_.,?!:;')( ]").split(str, 0));
            filter2 = SequencesKt___SequencesKt.filter(asSequence2, new Function1<String, Boolean>() { // from class: com.iMe.bots.data.SmartReplier$splitLemmas$words$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(it.length() > 0);
                }
            });
            map2 = SequencesKt___SequencesKt.map(filter2, new Function1<String, String>() { // from class: com.iMe.bots.data.SmartReplier$splitLemmas$words$2
                @Override // kotlin.jvm.functions.Function1
                public final String invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    String lowerCase = it.toLowerCase();
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
                    return lowerCase;
                }
            });
            map3 = SequencesKt___SequencesKt.map(map2, new Function1<String, String>() { // from class: com.iMe.bots.data.SmartReplier$splitLemmas$words$3
                @Override // kotlin.jvm.functions.Function1
                public final String invoke(String it) {
                    CharSequence trim;
                    Intrinsics.checkNotNullParameter(it, "it");
                    trim = StringsKt__StringsKt.trim(it);
                    return trim.toString();
                }
            });
            for (String str2 : map3) {
                if (str2.length() != 2) {
                    arrayList.add(str2);
                }
                if (str2.length() > 1) {
                    list2 = StringsKt___StringsKt.toList(str2);
                    zipWithNext2 = CollectionsKt___CollectionsKt.zipWithNext(list2);
                    for (Pair pair : zipWithNext2) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(((Character) pair.getFirst()).charValue());
                        sb.append(((Character) pair.getSecond()).charValue());
                        arrayList.add(sb.toString());
                    }
                }
            }
            zipWithNext = SequencesKt___SequencesKt.zipWithNext(map3);
            for (Pair pair2 : zipWithNext) {
                arrayList.add(((String) pair2.getFirst()) + ' ' + ((String) pair2.getSecond()));
            }
            return arrayList;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<SmartBotResponse> buildBotsList(List<Response> list, long j) {
        Object obj;
        Object obj2;
        List listOf;
        List<Response> plus;
        Response response;
        List listOf2;
        List plus2;
        List<Response> filterNotNull;
        int collectionSizeOrDefault;
        List listOf3;
        List plus3;
        List<Pair> sortedWith;
        int collectionSizeOrDefault2;
        int positionWithMaxCounter;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((Response) obj).getBotId(), "assistant")) {
                break;
            }
        }
        Response response2 = (Response) obj;
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it2.next();
            if (Intrinsics.areEqual(((Response) obj2).getBotId(), "holidays")) {
                break;
            }
        }
        Response response3 = (Response) obj2;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it3 = list.iterator();
        while (true) {
            boolean z = false;
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            Response response4 = (Response) next;
            if (!((Intrinsics.areEqual(response4.getBotId(), "assistant") || Intrinsics.areEqual(response4.getBotId(), "holidays")) ? true : true)) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(response2);
        plus = CollectionsKt___CollectionsKt.plus((Collection) listOf, (Iterable) arrayList);
        for (Response response5 : plus) {
            if (response5 != null && (positionWithMaxCounter = this.repository.getPositionWithMaxCounter(response5.getBotId(), response5.getTag())) != -1) {
                arrayList2.add(new Pair(Integer.valueOf(this.repository.getCounterForPosition(response5.getBotId(), response5.getTag(), positionWithMaxCounter)), response5.getAnswers().get(positionWithMaxCounter)));
            }
        }
        if (!arrayList2.isEmpty()) {
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.iMe.bots.data.SmartReplier$buildBotsList$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues((Integer) ((Pair) t2).getFirst(), (Integer) ((Pair) t).getFirst());
                    return compareValues;
                }
            });
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
            for (Pair pair : sortedWith) {
                arrayList3.add((String) pair.getSecond());
            }
            response = new Response("recent", "", null, null, arrayList3, 12, null);
        } else {
            response = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(response3 != null ? response3.getTag() : null);
        sb.append('.');
        sb.append(this.currentYearTag);
        String sb2 = sb.toString();
        Set<String> tagsForUser = this.repository.getTagsForUser(j);
        if (j == 0 || !tagsForUser.contains(sb2)) {
            listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new Response[]{response, response3, response2});
            plus2 = CollectionsKt___CollectionsKt.plus((Collection) listOf2, (Iterable) arrayList);
            filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(plus2);
        } else {
            listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new Response[]{response, response2});
            plus3 = CollectionsKt___CollectionsKt.plus((Collection) listOf3, (Iterable) arrayList);
            filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(plus3);
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(filterNotNull, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault);
        for (Response response6 : filterNotNull) {
            arrayList4.add(this.mapper.map(response6));
        }
        return arrayList4;
    }
}
