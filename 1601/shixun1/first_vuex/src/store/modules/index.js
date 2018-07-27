const state = {
    time: new Date().toString(),
    input: ''
}

const mutations = {
    update: (state, {time})=>{
        state.time = time
    },
    changeInput: (state, {input})=>{
        state.input = input
    }
}

const actions = {
    update: (context, payload)=>{
        console.log('我是index2模块的输出')
        // setInterval(()=>{
            context.commit('update', {
                ...payload 
            })
        // }, 1000);
    }
}

export default {
    // namespaced: true,

    state,
    actions,
    mutations
}